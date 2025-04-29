' ********************************************************************************

' MIT License

' Copyright (c) 2025 Romain Letellier

' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:

' The above copyright notice and this permission notice shall be included in all
' copies or substantial portions of the Software.

' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
' SOFTWARE.

' *********************************************************)

' ********************************************************************************
' Gathers the input folder with images, the output folder with the resized images
' and the size expected.
' ********************************************************************************

Option Explicit

' Variables globales
Dim documentFolder, documentFolderExport, widthHeight
Dim objFSO, objShell, objPhotoshop

' Initialiser les objets
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("Shell.Application")

' Fonction principale
Main()

Sub Main()
    ' Sélectionner les dossiers et obtenir les dimensions
    documentFolder = BrowseForFolder("Choisissez le dossier contenant les images à redimensionner.")
    If documentFolder = "" Then
        WScript.Quit
    End If
    
    documentFolderExport = BrowseForFolder("Choisissez le dossier d'exportation.")
    If documentFolderExport = "" Then
        WScript.Quit
    End If
    
    widthHeight = GetImageSize()
    
    ' Si l'utilisateur a fourni des dimensions valides, traiter les images
    If Not IsEmpty(widthHeight) Then
        ProcessImages()
    End If
End Sub

' ********************************************************************************
' Fonction qui traite toutes les images dans le dossier sélectionné
' ********************************************************************************
Sub ProcessImages()
    ' Vérifier que les dossiers existent
    If Not objFSO.FolderExists(documentFolder) Then
        MsgBox "Le dossier source n'existe pas.", vbExclamation, "Erreur"
        Exit Sub
    End If
    
    If Not objFSO.FolderExists(documentFolderExport) Then
        MsgBox "Le dossier d'exportation n'existe pas.", vbExclamation, "Erreur"
        Exit Sub
    End If
    
    ' Parcourir les fichiers dans le dossier source
    Dim folder, files, file, extension
    Set folder = objFSO.GetFolder(documentFolder)
    Set files = folder.Files
    
    ' Vérifier s'il y a des fichiers
    If files.Count > 0 Then
        ' Initialiser Photoshop
        On Error Resume Next
        Set objPhotoshop = CreateObject("Photoshop.Application")
        If Err.Number <> 0 Then
            MsgBox "Impossible de se connecter à Adobe Photoshop. Veuillez vérifier qu'il est installé.", vbExclamation, "Erreur"
            Exit Sub
        End If
        On Error GoTo 0
        
        ' Liste des extensions d'images supportées
        Dim supportedExts
        supportedExts = Array(".jpg", ".jpeg", ".png", ".tif", ".tiff", ".psd", ".bmp")
        
        ' Parcourir chaque fichier
        For Each file In files
            extension = LCase(objFSO.GetExtensionName(file.Name))
            
            ' Vérifier si c'est une image supportée
            If IsImageFile(extension, supportedExts) Then
                ResizeAndSaveImage file.Path, documentFolderExport & "\" & file.Name, widthHeight(0), widthHeight(1)
            End If
        Next
        
        MsgBox "Opération terminée avec succès!", vbInformation, "Information"
    Else
        MsgBox "Aucun fichier trouvé dans le dossier source.", vbExclamation, "Attention"
    End If
End Sub

' ********************************************************************************
' Fonction qui vérifie si un fichier est une image supportée
' ********************************************************************************
Function IsImageFile(extension, supportedExts)
    Dim i
    IsImageFile = False
    
    For i = 0 To UBound(supportedExts)
        If "." & extension = supportedExts(i) Then
            IsImageFile = True
            Exit Function
        End If
    Next
End Function

' ********************************************************************************
' Fonction qui redimensionne et sauvegarde une image avec Photoshop
' ********************************************************************************
Sub ResizeAndSaveImage(sourcePath, destinationPath, newWidth, newHeight)
    On Error Resume Next
    
    ' Ouvrir le document dans Photoshop
    Dim docRef
    docRef = objPhotoshop.Open(sourcePath)
    
    If Err.Number <> 0 Then
        MsgBox "Erreur lors de l'ouverture de " & sourcePath & ": " & Err.Description, vbExclamation, "Erreur"
        Exit Sub
    End If
    
    ' Redimensionner l'image
    objPhotoshop.ActiveDocument.ResizeImage newWidth, newHeight
    
    ' Sauvegarder le fichier
    Dim saveOptions, extension
    extension = LCase(objFSO.GetExtensionName(destinationPath))
    
    Select Case extension
        Case "jpg", "jpeg"
            Set saveOptions = CreateObject("Photoshop.JPEGSaveOptions")
            saveOptions.Quality = 10  ' Qualité maximum
            saveOptions.EmbedColorProfile = True
            docRef.SaveAs destinationPath, saveOptions, True
        
        Case "png"
            Set saveOptions = CreateObject("Photoshop.PNGSaveOptions")
            saveOptions.Interlaced = False
            docRef.SaveAs destinationPath, saveOptions, True
            
        Case "tif", "tiff"
            Set saveOptions = CreateObject("Photoshop.TiffSaveOptions")
            saveOptions.ImageCompression = 1  ' Pas de compression
            saveOptions.EmbedColorProfile = True
            docRef.SaveAs destinationPath, saveOptions, True
            
        Case Else
            ' Pour les autres formats, sauvegarde par défaut
            docRef.SaveAs destinationPath
    End Select
    
    ' Fermer le document sans enregistrer les modifications sur l'original
    docRef.Close 2 ' 2 = ne pas sauvegarder
    
    If Err.Number <> 0 Then
        MsgBox "Erreur lors du traitement de " & sourcePath & ": " & Err.Description, vbExclamation, "Erreur"
    End If
    
    On Error GoTo 0
End Sub

' ********************************************************************************
' Fonction qui demande à l'utilisateur les dimensions souhaitées
' ********************************************************************************
Function GetImageSize()
    Dim width, height
    
    ' Demander la largeur
    width = InputBox("Entrez la largeur de sortie:", "Largeur", "")
    
    ' Vérifier que la largeur est un entier positif
    If width = "" Then
        GetImageSize = Empty
        Exit Function
    End If
    
    If Not IsNumeric(width) Or Int(width) <> CDbl(width) Or CDbl(width) < 0 Then
        MsgBox "Largeur invalide. Veuillez entrer un entier positif.", vbExclamation, "Erreur"
        GetImageSize = Empty
        Exit Function
    End If
    
    ' Demander la hauteur
    height = InputBox("Entrez la hauteur de sortie:", "Hauteur", "")
    
    ' Vérifier que la hauteur est un entier positif
    If height = "" Then
        GetImageSize = Empty
        Exit Function
    End If
    
    If Not IsNumeric(height) Or Int(height) <> CDbl(height) Or CDbl(height) < 0 Then
        MsgBox "Hauteur invalide. Veuillez entrer un entier positif.", vbExclamation, "Erreur"
        GetImageSize = Empty
        Exit Function
    End If
    
    ' Retourner les dimensions dans un tableau
    GetImageSize = Array(width, height)
End Function

' ********************************************************************************
' Fonction qui affiche une boîte de dialogue pour sélectionner un dossier
' ********************************************************************************
Function BrowseForFolder(message)
    Dim objFolder
    Set objFolder = objShell.BrowseForFolder(0, message, 0)
    
    If objFolder Is Nothing Then
        BrowseForFolder = ""
    Else
        BrowseForFolder = objFolder.Self.Path
    End If
End Function
