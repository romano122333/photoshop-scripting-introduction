FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��*********************************************************

MIT License

Copyright (c) 2025 Romain Letellier

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

********************************************************     � 	 		J * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 
 M I T   L i c e n s e 
 
 C o p y r i g h t   ( c )   2 0 2 5   R o m a i n   L e t e l l i e r 
 
 P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y 
 o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l 
 i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s 
 t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l 
 c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s 
 f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 
 T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n   a l l 
 c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 
 T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S   O R 
 I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y , 
 F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L   T H E 
 A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R 
 L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M , 
 O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N   T H E 
 S O F T W A R E . 
 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
  
 l     ��������  ��  ��        l      ��  ��    � �*******************************************************************************
	Gathering the needed informations to prepare the javascript shell call.
*******************************************************************************     �  � * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 G a t h e r i n g   t h e   n e e d e d   i n f o r m a t i o n s   t o   p r e p a r e   t h e   j a v a s c r i p t   s h e l l   c a l l . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *      l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k    �       r     	    I    ���� 
�� .sysostdfalis    ��� null��    �� ��
�� 
prmp  m       �   B C h o o s e   t h e   w a t e r m a r k   i m a g e   ( P N G ) .��    o      ���� 0 watermarkfile watermarkFile     !   I  
 �� " #
�� .sysodlogaskr        TEXT " m   
  $ $ � % % L E n t e r   t h e   a n g l e   ( i n   d e g r e e s ,   e . g .   4 5 ) : # �� & '
�� 
dtxt & m     ( ( � ) )  0 ' �� * +
�� 
btns * J     , ,  - . - m     / / � 0 0  C a n c e l .  1�� 1 m     2 2 � 3 3  V a l i d a t e��   + �� 4��
�� 
dflt 4 m     5 5 � 6 6  V a l i d a t e��   !  7 8 7 r      9 : 9 n     ; < ; 1    ��
�� 
ttxt < 1    ��
�� 
rslt : o      ���� 	0 angle   8  = > = I  ! 9�� ? @
�� .sysodlogaskr        TEXT ? m   ! $ A A � B B : E n t e r   t h e   o p a c i t y   ( 0   t o   1 0 0 ) : @ �� C D
�� 
dtxt C m   % ( E E � F F  1 0 0 D �� G H
�� 
btns G J   ) 1 I I  J K J m   ) , L L � M M  C a n c e l K  N�� N m   , / O O � P P  V a l i d a t e��   H �� Q��
�� 
dflt Q m   2 5 R R � S S  V a l i d a t e��   >  T U T r   : A V W V n   : = X Y X 1   ; =��
�� 
ttxt Y 1   : ;��
�� 
rslt W o      ���� 0 opacity   U  Z [ Z r   B O \ ] \ I  B K���� ^
�� .sysostflalis    ��� null��   ^ �� _��
�� 
prmp _ m   D G ` ` � a a V C h o o s e   t h e   f o l d e r   w i t h   i m a g e s   t o   w a t e r m a r k .��   ] o      ���� 0 inputfolder inputFolder [  b c b r   P ] d e d I  P Y���� f
�� .sysostflalis    ��� null��   f �� g��
�� 
prmp g m   R U h h � i i 2 C h o o s e   t h e   e x p o r t   f o l d e r .��   e o      ���� 0 exportfolder exportFolder c  j k j l  ^ ^��������  ��  ��   k  l m l O   ^ � n o n k   d � p p  q r q r   d q s t s c   d m u v u l  d i w���� w I  d i�� x��
�� .earsffdralis        afdr x  f   d e��  ��  ��   v m   i l��
�� 
ctxt t o      ���� &0 currentscriptpath currentScriptPath r  y z y r   r } { | { n   r y } ~ } 1   u y��
�� 
psxp ~ o   r u���� &0 currentscriptpath currentScriptPath | o      ���� (0 currentscriptposix currentScriptPOSIX z  ��  r   ~ � � � � n   ~ � � � � 2  � ���
�� 
file � o   ~ ����� 0 inputfolder inputFolder � o      ���� 0 	imagelist 	imageList��   o m   ^ a � ��                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   m  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I   � ��� ����� $0 removelastfolder removeLastFolder �  ��� � I   � ��� ����� $0 removelastfolder removeLastFolder �  ��� � o   � ����� (0 currentscriptposix currentScriptPOSIX��  ��  ��  ��   � o      ���� "0 projectrootpath projectRootPath �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � b   � � � � � o   � ����� "0 projectrootpath projectRootPath � m   � � � � � � � * / u s e r _ p r e f e r e n c e s . t x t � o      ���� "0 preferencespath preferencesPath �  � � � r   � � � � � b   � � � � � o   � ����� "0 projectrootpath projectRootPath � m   � � � � � � � $ / g e t _ d i m e n s i o n s . p y � o      ���� $0 pythonscriptpath pythonScriptPath �  � � � r   � � � � � b   � � � � � o   � ����� "0 projectrootpath projectRootPath � m   � � � � � � � 0 / w a t e r m a r k A u t o m a t i o n . j s x � o      ���� 0 jsxpath jsxPath �  � � � r   � � � � � I   � ��� ����� 80 getpythonpillowenvironment getPythonPillowEnvironment �  ��� � o   � ����� "0 preferencespath preferencesPath��  ��   � o      ���� 0 
pythonpath 
pythonPath �  � � � l  � ���������  ��  ��   �  � � � Z   �- � ��� � � ?   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	imagelist 	imageList��  ��  ��   � m   � �����   � k   � � �  � � � r   � � � � � n  � � � � � I   � ��� ����� *0 findbiggestdiagonal findBiggestDiagonal �  � � � o   � ����� 0 	imagelist 	imageList �  � � � o   � ����� 0 
pythonpath 
pythonPath �  ��� � o   � ����� $0 pythonscriptpath pythonScriptPath��  ��   �  f   � � � o      ���� "0 biggestdiagonal biggestDiagonal �  ��� � r   � � � � n  � � � � � I   � ��� ����� <0 getimagedimensionswithpython getImageDimensionsWithPython �  � � � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 watermarkfile watermarkFile��  ��   �  � � � o   � ����� 0 
pythonpath 
pythonPath �  ��� � o   � ����� $0 pythonscriptpath pythonScriptPath��  ��   �  f   � � � J       � �  � � � o      ���� 0 wwidth wWidth �  ��� � o      ���� 0 wheight wHeight��  ��  ��   � k  - � �  � � � I *�� � �
�� .sysodlogaskr        TEXT � m   � � � � � X N o   i m a g e   f i l e s   f o u n d   i n   t h e   s e l e c t e d   f o l d e r . � �� � �
�� 
btns � J    � �  ��� � m   � � � � �  O K��   � �� ���
�� 
dflt � m  !$ � � � � �  O K��   �  ��� � L  +-����  ��   �  � � � l ..��������  ��  ��   �  � � � r  .: � � � I  .6�� ����� (0 getallimagepathstr getAllImagePathStr �  �� � o  /2�~�~ 0 	imagelist 	imageList�  ��   � o      �}�} 0 imageliststr imageListStr �  � � � r  ;G � � � I  ;C�| ��{�| (0 getstrpathfromfile getStrPathFromFile �  ��z � o  <?�y�y 0 watermarkpath watermarkPath�z  �{   � o      �x�x $0 watermarkpathstr watermarkPathStr �  � � � r  HT � � � I  HP�w ��v�w (0 getstrpathfromfile getStrPathFromFile �  ��u � o  IL�t�t 0 
outputpath 
outputPath�u  �v   � o      �s�s 0 outputpathstr outputPathStr �  � � � r  U`   c  U\ o  UX�r�r 	0 angle   m  X[�q
�q 
TEXT o      �p�p 0 anglestr angleStr �  r  al c  ah	 o  ad�o�o 0 opacity  	 m  dg�n
�n 
TEXT o      �m�m 0 
opacitystr 
opacityStr 

 l mm�l�k�j�l  �k  �j    r  mx c  mt o  mp�i�i "0 biggestdiagonal biggestDiagonal m  ps�h
�h 
TEXT o      �g�g (0 biggestdiagonalstr biggestDiagonalStr  r  y� c  y� o  y|�f�f 0 wwidth wWidth m  |�e
�e 
TEXT o      �d�d 0 	wwidthstr 	wWidthStr  r  �� c  �� o  ���c�c 0 wheight wHeight m  ���b
�b 
TEXT o      �a�a 0 
wheightstr 
wHeightStr  l ���`�_�^�`  �_  �^    !  Q  ��"#$" O  ��%&% I ���]'(
�] .miscDjxMnull���     ****' 4  ���\)
�\ 
file) o  ���[�[ 0 jsxpath jsxPath( �Z*�Y
�Z 
JArg* J  ��++ ,-, o  ���X�X 0 imageliststr imageListStr- ./. o  ���W�W $0 watermarkpathstr watermarkPathStr/ 010 o  ���V�V 0 outputpathstr outputPathStr1 232 o  ���U�U 0 anglestr angleStr3 454 o  ���T�T 0 
opacitystr 
opacityStr5 676 o  ���S�S (0 biggestdiagonalstr biggestDiagonalStr7 898 o  ���R�R 0 	wwidthstr 	wWidthStr9 :�Q: o  ���P�P 0 
wheightstr 
wHeightStr�Q  �Y  & m  ��;;�                                                                                  8BIM  alis    �  Macintosh HD               ��2BD ����Adobe Photoshop 2025.app                                       �����2�p        ����  
 cu             Adobe Photoshop 2025  =/:Applications:Adobe Photoshop 2025:Adobe Photoshop 2025.app/   2  A d o b e   P h o t o s h o p   2 0 2 5 . a p p    M a c i n t o s h   H D  :Applications/Adobe Photoshop 2025/Adobe Photoshop 2025.app  / ��  # R      �O<�N
�O .ascrerr ****      � ****< o      �M�M 0 error_message  �N  $ I ���L=>
�L .sysodlogaskr        TEXT= b  ��?@? m  ��AA �BB  E r r o r :  @ o  ���K�K 0 error_message  > �JCD
�J 
btnsC J  ��EE F�IF m  ��GG �HH  O K�I  D �HI�G
�H 
dfltI m  ��JJ �KK  O K�G  ! LML l ���F�E�D�F  �E  �D  M N�CN O  ��OPO I ���BQ�A
�B .aevtodocnull  �    alisQ o  ���@�@ 0 exportfolder exportFolder�A  P m  ��RR�                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �C    STS l     �?�>�=�?  �>  �=  T UVU l      �<WX�<  W��*******************************************************************************
	Converts a file or a folder to its path in string to prepare for the javascript call.
	
	FYI: AppleScript cannot handle executing a call to javascript with the paths as
	POSIX paths, so we need to pass them trough this function before sending Adobe
	Photoshop a request. This is likely because POSIX paths are "Finder" objects,
	and communicating with Photoshop have to be done with object Photoshop understands.
	
	fileOrFolder : POSIX path or string
		--> filePathStr : string	
*******************************************************************************   X �YY  * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 C o n v e r t s   a   f i l e   o r   a   f o l d e r   t o   i t s   p a t h   i n   s t r i n g   t o   p r e p a r e   f o r   t h e   j a v a s c r i p t   c a l l . 
 	 
 	 F Y I :   A p p l e S c r i p t   c a n n o t   h a n d l e   e x e c u t i n g   a   c a l l   t o   j a v a s c r i p t   w i t h   t h e   p a t h s   a s 
 	 P O S I X   p a t h s ,   s o   w e   n e e d   t o   p a s s   t h e m   t r o u g h   t h i s   f u n c t i o n   b e f o r e   s e n d i n g   A d o b e 
 	 P h o t o s h o p   a   r e q u e s t .   T h i s   i s   l i k e l y   b e c a u s e   P O S I X   p a t h s   a r e   " F i n d e r "   o b j e c t s , 
 	 a n d   c o m m u n i c a t i n g   w i t h   P h o t o s h o p   h a v e   t o   b e   d o n e   w i t h   o b j e c t   P h o t o s h o p   u n d e r s t a n d s . 
 	 
 	 f i l e O r F o l d e r   :   P O S I X   p a t h   o r   s t r i n g 
 	 	 - - >   f i l e P a t h S t r   :   s t r i n g 	 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *V Z[Z l     �;�:�9�;  �:  �9  [ \]\ i   ^_^ I      �8`�7�8 (0 getstrpathfromfile getStrPathFromFile` a�6a o      �5�5 0 fileorfolder fileOrFolder�6  �7  _ k     bb cdc O     
efe r    	ghg n    iji 1    �4
�4 
psxpj o    �3�3 0 fileorfolder fileOrFolderh o      �2�2 0 filepath filePathf m     kk�                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  d lml r    non c    pqp o    �1�1 0 filepath filePathq m    �0
�0 
TEXTo o      �/�/ 0 filepathstr filePathStrm r�.r L    ss o    �-�- 0 filepathstr filePathStr�.  ] tut l     �,�+�*�,  �+  �*  u vwv l      �)xy�)  x}w*******************************************************************************
	Functions that finds the size of the biggest diagonal for the dimensions in a set
	of images.

	imageList : string, pythonPath : POSIX path / string, pythonScriptPath : POSIX path / string
		--> maxDiagonal : float
*******************************************************************************   y �zz� * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 F u n c t i o n s   t h a t   f i n d s   t h e   s i z e   o f   t h e   b i g g e s t   d i a g o n a l   f o r   t h e   d i m e n s i o n s   i n   a   s e t 
 	 o f   i m a g e s . 
 
 	 i m a g e L i s t   :   s t r i n g ,   p y t h o n P a t h   :   P O S I X   p a t h   /   s t r i n g ,   p y t h o n S c r i p t P a t h   :   P O S I X   p a t h   /   s t r i n g 
 	 	 - - >   m a x D i a g o n a l   :   f l o a t 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *w {|{ l     �(�'�&�(  �'  �&  | }~} i   � I      �%��$�% *0 findbiggestdiagonal findBiggestDiagonal� ��� o      �#�# 0 	imagelist 	imageList� ��� o      �"�" 0 
pythonpath 
pythonPath� ��!� o      � �  $0 pythonscriptpath pythonScriptPath�!  �$  � k     Z�� ��� r     ��� m     ��  � o      �� 0 maxdiagonal maxDiagonal� ��� Y    W������ k    R�� ��� r    ��� n    ��� 4    ��
� 
cobj� o    �� 0 i  � o    �� 0 	imagelist 	imageList� o      �� 0 	imagefile 	imageFile� ��� r     ��� n    ��� 1    �
� 
psxp� l   ���� c    ��� o    �� 0 	imagefile 	imageFile� m    �
� 
alis�  �  � o      �� 0 	imagepath 	imagePath� ��� r   ! 8��� n  ! )��� I   " )���� <0 getimagedimensionswithpython getImageDimensionsWithPython� ��� o   " #�� 0 	imagepath 	imagePath� ��� o   # $�� 0 
pythonpath 
pythonPath� ��� o   $ %�� $0 pythonscriptpath pythonScriptPath�  �  �  f   ! "� J      �� ��� o      �� 	0 width  � ��
� o      �	�	 
0 height  �
  � ��� r   9 D��� a   9 B��� l  9 @���� [   9 @��� a   9 <��� o   9 :�� 	0 width  � m   : ;�� � a   < ?��� o   < =�� 
0 height  � m   = >�� �  �  � m   @ A�� ?�      � o      �� 0 diagonal  � ��� Z   E R��� ��� ?   E H��� o   E F���� 0 diagonal  � o   F G���� 0 maxdiagonal maxDiagonal� r   K N��� o   K L���� 0 diagonal  � o      ���� 0 maxdiagonal maxDiagonal�   ��  �  � 0 i  � m    ���� � I   �����
�� .corecnte****       ****� o    	���� 0 	imagelist 	imageList��  �  � ���� L   X Z�� o   X Y���� 0 maxdiagonal maxDiagonal��  ~ ��� l     ��������  ��  ��  � ��� l      ������  �UO*******************************************************************************
	Gathers the size of a given image.

	FYI: I couldn't use native Applescript functions to get the image size of files
	other than jpg for some reason... It implies to use Pillow on Python to get
	them. If you are able to find a prettier workaround, feel free to let me know.
	
	imagePath : POSIX path / string, pythonPath : POSIX path / string, pythonScriptPath : POSIX path / string
		--> {imageWidth : float, imageHeight : float}
*******************************************************************************   � ���� * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 G a t h e r s   t h e   s i z e   o f   a   g i v e n   i m a g e . 
 
 	 F Y I :   I   c o u l d n ' t   u s e   n a t i v e   A p p l e s c r i p t   f u n c t i o n s   t o   g e t   t h e   i m a g e   s i z e   o f   f i l e s 
 	 o t h e r   t h a n   j p g   f o r   s o m e   r e a s o n . . .   I t   i m p l i e s   t o   u s e   P i l l o w   o n   P y t h o n   t o   g e t 
 	 t h e m .   I f   y o u   a r e   a b l e   t o   f i n d   a   p r e t t i e r   w o r k a r o u n d ,   f e e l   f r e e   t o   l e t   m e   k n o w . 
 	 
 	 i m a g e P a t h   :   P O S I X   p a t h   /   s t r i n g ,   p y t h o n P a t h   :   P O S I X   p a t h   /   s t r i n g ,   p y t h o n S c r i p t P a t h   :   P O S I X   p a t h   /   s t r i n g 
 	 	 - - >   { i m a g e W i d t h   :   f l o a t ,   i m a g e H e i g h t   :   f l o a t } 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *� ��� l     ��������  ��  ��  � ��� i   ��� I      ������� <0 getimagedimensionswithpython getImageDimensionsWithPython� ��� o      ���� 0 	imagepath 	imagePath� ��� o      ���� 0 
pythonpath 
pythonPath� ���� o      ���� $0 pythonscriptpath pythonScriptPath��  ��  � Q     Y���� k    A�� ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� n    ��� 1    ��
�� 
strq� o    ���� 0 
pythonpath 
pythonPath� m    �� ���   � n    ��� 1   	 ��
�� 
strq� o    	���� $0 pythonscriptpath pythonScriptPath� m    �� ���   � n    ��� 1    ��
�� 
strq� o    ���� 0 	imagepath 	imagePath��  � o      ���� $0 dimensionsresult dimensionsResult� ��� r    ��� m    �� ���  ,� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr�    r    1 n    " 2    "��
�� 
citm o     ���� $0 dimensionsresult dimensionsResult J        o      ���� 0 
imagewidth 
imageWidth 	��	 o      ���� 0 imageheight imageHeight��   

 r   2 7 m   2 3 �   n      1   4 6��
�� 
txdl 1   3 4��
�� 
ascr �� L   8 A J   8 @  c   8 ; o   8 9���� 0 
imagewidth 
imageWidth m   9 :��
�� 
long �� c   ; > o   ; <���� 0 imageheight imageHeight m   < =��
�� 
long��  ��  � R      ����
�� .ascrerr ****      � **** o      ���� 0 error_message  ��  � k   I Y  I  I T�� ��
�� .sysodlogaskr        TEXT  b   I P!"! b   I N#$# b   I L%&% m   I J'' �(( ( E r r e u r   p o u r   l ' i m a g e  & o   J K���� 0 	imagepath 	imagePath$ m   L M)) �**    :  " o   N O���� 0 error_message  ��   +��+ R   U Y��,��
�� .ascrerr ****      � ****, o   W X���� 0 error_message  ��  ��  � -.- l     ��������  ��  ��  . /0/ l      ��12��  1*******************************************************************************
	Takes as input a string corresponding to a path and returns the path downgraded
	by one folder level.
*******************************************************************************   2 �33 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 T a k e s   a s   i n p u t   a   s t r i n g   c o r r e s p o n d i n g   t o   a   p a t h   a n d   r e t u r n s   t h e   p a t h   d o w n g r a d e d 
 	 b y   o n e   f o l d e r   l e v e l . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *0 454 l     ��������  ��  ��  5 676 i   898 I      ��:���� 0 
fileexists 
fileExists: ;��; o      ���� 0 filepath filePath��  ��  9 Q     <=>< k    ?? @A@ I   ��B��
�� .sysoexecTEXT���     TEXTB b    CDC m    EE �FF  t e s t   - f  D n    GHG 1    ��
�� 
strqH o    ���� 0 filepath filePath��  A I��I L    JJ m    ��
�� boovtrue��  = R      ������
�� .ascrerr ****      � ****��  ��  > L    KK m    ��
�� boovfals7 LML l     ��������  ��  ��  M NON l      ��PQ��  P��*******************************************************************************
	Takes as input a string corresponding to a path and returns the path downgraded
	by one folder level.
	
	folderName : POSIX path or string
		--> newPath : string
	
	e.g. : 
		removeLastFolder("/path/to/image.png") = "/path/to"
		removeLastFolder("/path/to/image/") = "/path/to"		
*******************************************************************************   Q �RRp * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 T a k e s   a s   i n p u t   a   s t r i n g   c o r r e s p o n d i n g   t o   a   p a t h   a n d   r e t u r n s   t h e   p a t h   d o w n g r a d e d 
 	 b y   o n e   f o l d e r   l e v e l . 
 	 
 	 f o l d e r N a m e   :   P O S I X   p a t h   o r   s t r i n g 
 	 	 - - >   n e w P a t h   :   s t r i n g 
 	 
 	 e . g .   :   
 	 	 r e m o v e L a s t F o l d e r ( " / p a t h / t o / i m a g e . p n g " )   =   " / p a t h / t o " 
 	 	 r e m o v e L a s t F o l d e r ( " / p a t h / t o / i m a g e / " )   =   " / p a t h / t o " 	 	 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *O STS l     ��������  ��  ��  T UVU i   WXW I      ��Y���� $0 removelastfolder removeLastFolderY Z��Z o      ���� 0 
foldername 
folderName��  ��  X k     3[[ \]\ O     0^_^ k    /`` aba r    	cdc m    ee �ff  /d n     ghg 1    ��
�� 
txdlh 1    ��
�� 
ascrb iji r   
 klk n   
 mnm 2   ��
�� 
citmn o   
 ���� 0 
foldername 
folderNamel o      ���� 0 	pathitems 	pathItemsj opo r    #qrq n    !sts 7  !��uv
�� 
cobju m    ���� v l    w����w \     xyx l   z����z I   ��{��
�� .corecnte****       ****{ o    ���� 0 	pathitems 	pathItems��  ��  ��  y m    ���� ��  ��  t o    ���� 0 	pathitems 	pathItemsr o      ���� 0 	pathitems 	pathItemsp |}| r   $ )~~ m   $ %�� ���  / n     ��� 1   & (��
�� 
txdl� 1   % &��
�� 
ascr} ���� r   * /��� l  * -������ c   * -��� o   * +���� 0 	pathitems 	pathItems� m   + ,��
�� 
ctxt��  ��  � o      ���� 0 newpath newPath��  _ m     ���                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ] ���� L   1 3�� o   1 2���� 0 newpath newPath��  V ��� l     ��������  ��  ��  � ��� l      ������  ���*******************************************************************************
	Concatenates all image paths into one string separated by comas.
	inputFolder : POSIX path / string
		--> imageListStr : string
		
	e.g. :
		getAllPathStr("/path/to/image_folder/") =
		"/path/to/image_folder/image1.png, /path/to/image_folder/image2.png, /path/to/image_folder/image3.png"
*******************************************************************************   � ���� * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 C o n c a t e n a t e s   a l l   i m a g e   p a t h s   i n t o   o n e   s t r i n g   s e p a r a t e d   b y   c o m a s . 
 	 i n p u t F o l d e r   :   P O S I X   p a t h   /   s t r i n g 
 	 	 - - >   i m a g e L i s t S t r   :   s t r i n g 
 	 	 
 	 e . g .   : 
 	 	 g e t A l l P a t h S t r ( " / p a t h / t o / i m a g e _ f o l d e r / " )   = 
 	 	 " / p a t h / t o / i m a g e _ f o l d e r / i m a g e 1 . p n g ,   / p a t h / t o / i m a g e _ f o l d e r / i m a g e 2 . p n g ,   / p a t h / t o / i m a g e _ f o l d e r / i m a g e 3 . p n g " 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *� ��� l     ��������  ��  ��  � ��� i   ��� I      ������� (0 getallimagepathstr getAllImagePathStr� ���� o      �� 0 inputfolder inputFolder��  ��  � k     i�� ��� O     ��� k    �� ��� r    	��� n    ��� 2   �~
�~ 
file� o    �}�} 0 inputfolder inputFolder� o      �|�| 0 	imagelist 	imageList� ��� r   
 ��� n   
 ��� 4    �{�
�{ 
cobj� m    �z�z � o   
 �y�y 0 	imagelist 	imageList� o      �x�x  0 firstimagefile firstImageFile� ��w� r    ��� n    ��� 1    �v
�v 
psxp� l   ��u�t� c    ��� o    �s�s  0 firstimagefile firstImageFile� m    �r
�r 
alis�u  �t  � o      �q�q 0 	imagepath 	imagePath�w  � m     ���                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r    ��� c    ��� o    �p�p 0 	imagepath 	imagePath� m    �o
�o 
TEXT� o      �n�n 0 imageliststr imageListStr� ��� Z     f���m�l� ?     '��� l    %��k�j� I    %�i��h
�i .corecnte****       ****� o     !�g�g 0 	imagelist 	imageList�h  �k  �j  � m   % &�f�f � Y   * b��e���d� k   8 ]�� ��� O   8 K��� k   < J�� ��� r   < B��� n   < @��� 4   = @�c�
�c 
cobj� o   > ?�b�b 0 i  � o   < =�a�a 0 	imagelist 	imageList� o      �`�` 0 	imagefile 	imageFile� ��_� r   C J��� n   C H��� 1   F H�^
�^ 
psxp� l  C F��]�\� c   C F��� o   C D�[�[ 0 	imagefile 	imageFile� m   D E�Z
�Z 
alis�]  �\  � o      �Y�Y 0 	imagepath 	imagePath�_  � m   8 9���                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r   L Q��� c   L O��� o   L M�X�X 0 	imagepath 	imagePath� m   M N�W
�W 
TEXT� o      �V�V 0 imagepathstr imagePathStr� ��� r   R U��� o   R S�U�U 0 imageliststr imageListStr� o      �T�T 0 	imagetemp 	imageTemp� ��S� r   V ]��� b   V [��� b   V Y��� o   V W�R�R 0 	imagetemp 	imageTemp� m   W X�� ���  ,  � o   Y Z�Q�Q 0 imagepathstr imagePathStr� o      �P�P 0 imageliststr imageListStr�S  �e 0 i  � m   - .�O�O � I  . 3�N��M
�N .corecnte****       ****� o   . /�L�L 0 	imagelist 	imageList�M  �d  �m  �l  � ��K� L   g i�� o   g h�J�J 0 imageliststr imageListStr�K  � ��� l     �I�H�G�I  �H  �G  � ��� l      �F���F  ���*******************************************************************************
	Verifies whether or not the user has already given the correct path to the python
	environment	containing Pillow. Ask for it otherwise, and then call the given python
	script.
	
	preferencesPath : POSIX path / string
		--> pythonPath : string
	
	Dependencies : fileExists(path)
*******************************************************************************   � ���l * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 V e r i f i e s   w h e t h e r   o r   n o t   t h e   u s e r   h a s   a l r e a d y   g i v e n   t h e   c o r r e c t   p a t h   t o   t h e   p y t h o n 
 	 e n v i r o n m e n t 	 c o n t a i n i n g   P i l l o w .   A s k   f o r   i t   o t h e r w i s e ,   a n d   t h e n   c a l l   t h e   g i v e n   p y t h o n 
 	 s c r i p t . 
 	 
 	 p r e f e r e n c e s P a t h   :   P O S I X   p a t h   /   s t r i n g 
 	 	 - - >   p y t h o n P a t h   :   s t r i n g 
 	 
 	 D e p e n d e n c i e s   :   f i l e E x i s t s ( p a t h ) 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *� ��� l     �E�D�C�E  �D  �C  � ��� i      I      �B�A�B 80 getpythonpillowenvironment getPythonPillowEnvironment �@ o      �?�? "0 preferencespath preferencesPath�@  �A   Z     `�> I     �=�<�= 0 
fileexists 
fileExists �; o    �:�: "0 preferencespath preferencesPath�;  �<   k   	 		 

 r   	  I  	 �9�8
�9 .sysoexecTEXT���     TEXT b   	  m   	 
 �  c a t   n   
  1    �7
�7 
strq o   
 �6�6 "0 preferencespath preferencesPath�8   o      �5�5 0 
pythonpath 
pythonPath �4 L     o    �3�3 0 
pythonpath 
pythonPath�4  �>   k    `  r    ' I   %�2
�2 .gtqpchltns    @   @ ns   J       m    !! �""   / u s r / b i n / p y t h o n 3  #$# m    %% �&& 2 / o p t / h o m e b r e w / b i n / p y t h o n 3$ '�1' m    (( �)) F / U s e r s / S h a r e d / a n a c o n d a 3 / b i n / p y t h o n 3�1   �0*�/
�0 
prmp* m     !++ �,, � C h o o s e   a   P y t h o n   e n v i r o n m e n t   o n   w h i c h   y o u   h a v e   P i l l o w   i n s t a l l e d   ( p i p   i n s t a l l   p i l l o w   o n   a   t e r m i n a l   i f   y o u   d o n ' t ) :�/   o      �.�. 0 
userchoice 
userChoice -.- Z   ( @/0�-�,/ =  ( +121 o   ( )�+�+ 0 
userchoice 
userChoice2 m   ) *�*
�* boovfals0 k   . <33 454 I  . 9�)67
�) .sysodlogaskr        TEXT6 m   . /88 �99 R N o   e n v i r o n m e n t   s e l e c t e d .   S c r i p t   c a n c e l e d .7 �(:;
�( 
btns: J   0 3<< =�'= m   0 1>> �??  O K�'  ; �&@�%
�& 
dflt@ m   4 5AA �BB  O K�%  5 C�$C L   : <�#�#  �$  �-  �,  . DED r   A IFGF n   A GHIH 4   B G�"J
�" 
cobjJ m   E F�!�! I o   A B� �  0 
userchoice 
userChoiceG o      �� 0 
pythonpath 
pythonPathE KLK l  J J�MN�  M 6 0 Sauvegarder le chemin dans user_preferences.txt   N �OO `   S a u v e g a r d e r   l e   c h e m i n   d a n s   u s e r _ p r e f e r e n c e s . t x tL PQP I  J ]�R�
� .sysoexecTEXT���     TEXTR b   J YSTS b   J UUVU b   J QWXW m   J MYY �ZZ 
 e c h o  X n   M P[\[ 1   N P�
� 
strq\ o   M N�� 0 
pythonpath 
pythonPathV m   Q T]] �^^    >  T n   U X_`_ 1   V X�
� 
strq` o   U V�� "0 preferencespath preferencesPath�  Q a�a L   ^ `bb o   ^ _�� 0 
pythonpath 
pythonPath�  � cdc l     ����  �  �  d e�e l     ����  �  �  �       
�fghijklmn�  f ����
�	���
� .aevtoappnull  �   � ****� (0 getstrpathfromfile getStrPathFromFile� *0 findbiggestdiagonal findBiggestDiagonal�
 <0 getimagedimensionswithpython getImageDimensionsWithPython�	 0 
fileexists 
fileExists� $0 removelastfolder removeLastFolder� (0 getallimagepathstr getAllImagePathStr� 80 getpythonpillowenvironment getPythonPillowEnvironmentg � ��op�
� .aevtoappnull  �   � ****�  �  o �� 0 error_message  p P�  ���� $�� (�� / 2�� 5���������� A E L O R�� `���� h�� ������������������� ��� ��� ��������������������� � � �����������������������������;����������AGJ��
�  
prmp
�� .sysostdfalis    ��� null�� 0 watermarkfile watermarkFile
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� 	0 angle  �� 0 opacity  
�� .sysostflalis    ��� null�� 0 inputfolder inputFolder�� 0 exportfolder exportFolder
�� .earsffdralis        afdr
�� 
ctxt�� &0 currentscriptpath currentScriptPath
�� 
psxp�� (0 currentscriptposix currentScriptPOSIX
�� 
file�� 0 	imagelist 	imageList�� $0 removelastfolder removeLastFolder�� "0 projectrootpath projectRootPath�� "0 preferencespath preferencesPath�� $0 pythonscriptpath pythonScriptPath�� 0 jsxpath jsxPath�� 80 getpythonpillowenvironment getPythonPillowEnvironment�� 0 
pythonpath 
pythonPath
�� .corecnte****       ****�� *0 findbiggestdiagonal findBiggestDiagonal�� "0 biggestdiagonal biggestDiagonal�� <0 getimagedimensionswithpython getImageDimensionsWithPython
�� 
cobj�� 0 wwidth wWidth�� 0 wheight wHeight�� �� (0 getallimagepathstr getAllImagePathStr�� 0 imageliststr imageListStr�� 0 watermarkpath watermarkPath�� (0 getstrpathfromfile getStrPathFromFile�� $0 watermarkpathstr watermarkPathStr�� 0 
outputpath 
outputPath�� 0 outputpathstr outputPathStr
�� 
TEXT�� 0 anglestr angleStr�� 0 
opacitystr 
opacityStr�� (0 biggestdiagonalstr biggestDiagonalStr�� 0 	wwidthstr 	wWidthStr�� 0 
wheightstr 
wHeightStr
�� 
JArg�� 
�� .miscDjxMnull���     ****�� 0 error_message  ��  
�� .aevtodocnull  �    alis��*��l E�O������lv��� O��,E` Oa �a �a a lv�a � O��,E` O*�a l E` O*�a l E` Oa  ')j a &E` O_ a  ,E` !O_ a "-E` #UO**_ !k+ $k+ $E` %O_ %a &%E` 'O_ %a (%E` )O_ %a *%E` +O*_ 'k+ ,E` -O_ #j .j ?)_ #_ -_ )m+ /E` 0O)�a  ,_ -_ )m+ 1E[a 2k/E` 3Z[a 2l/E` 4ZY a 5�a 6kv�a 7a 8 OhO*_ #k+ 9E` :O*_ ;k+ <E` =O*_ >k+ <E` ?O_ a @&E` AO_ a @&E` BO_ 0a @&E` CO_ 3a @&E` DO_ 4a @&E` EO 7a F -*a "_ +/a G_ :_ =_ ?_ A_ B_ C_ D_ Ea Hvl IUW X J Ka L�%�a Mkv�a Na 8 Oa  	_ j OUh ��_����qr���� (0 getstrpathfromfile getStrPathFromFile�� ��s�� s  ���� 0 fileorfolder fileOrFolder��  q �������� 0 fileorfolder fileOrFolder�� 0 filepath filePath�� 0 filepathstr filePathStrr k����
�� 
psxp
�� 
TEXT�� � ��,E�UO��&E�O�i �������tu���� *0 findbiggestdiagonal findBiggestDiagonal�� ��v�� v  �������� 0 	imagelist 	imageList�� 0 
pythonpath 
pythonPath�� $0 pythonscriptpath pythonScriptPath��  t 
���������������������� 0 	imagelist 	imageList�� 0 
pythonpath 
pythonPath�� $0 pythonscriptpath pythonScriptPath�� 0 maxdiagonal maxDiagonal�� 0 i  �� 0 	imagefile 	imageFile�� 0 	imagepath 	imagePath�� 	0 width  �� 
0 height  �� 0 diagonal  u �����������
�� .corecnte****       ****
�� 
cobj
�� 
alis
�� 
psxp�� <0 getimagedimensionswithpython getImageDimensionsWithPython�� [jE�O Rk�j  kh ��/E�O��&�,E�O)���m+ E[�k/E�Z[�l/E�ZO�l$�l$�$E�O�� �E�Y h[OY��O�j �������wx���� <0 getimagedimensionswithpython getImageDimensionsWithPython�� ��y�� y  �������� 0 	imagepath 	imagePath�� 0 
pythonpath 
pythonPath�� $0 pythonscriptpath pythonScriptPath��  w ���������������� 0 	imagepath 	imagePath�� 0 
pythonpath 
pythonPath�� $0 pythonscriptpath pythonScriptPath�� $0 dimensionsresult dimensionsResult�� 0 
imagewidth 
imageWidth�� 0 imageheight imageHeight�� 0 error_message  x ���������������������')��
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj
�� 
long�� 0 error_message  ��  
�� .sysodlogaskr        TEXT�� Z C��,�%��,%�%��,%j E�O���,FO��-E[�k/E�Z[�l/E�ZO���,FO��&��&lvW X  ��%�%�%j O)j�k ��9����z{���� 0 
fileexists 
fileExists�� ��|�� |  ���� 0 filepath filePath��  z ���� 0 filepath filePath{ E��������
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ��  ��,%j OeW 	X  fl ��X����}~��� $0 removelastfolder removeLastFolder�� �~�~   �}�} 0 
foldername 
folderName��  } �|�{�z�| 0 
foldername 
folderName�{ 0 	pathitems 	pathItems�z 0 newpath newPath~ 	�e�y�x�w�v�u��t
�y 
ascr
�x 
txdl
�w 
citm
�v 
cobj
�u .corecnte****       ****
�t 
ctxt� 4� -���,FO��-E�O�[�\[Zk\Z�j k2E�O���,FO��&E�UO�m �s��r�q���p�s (0 getallimagepathstr getAllImagePathStr�r �o��o �  �n�n 0 inputfolder inputFolder�q  � 	�m�l�k�j�i�h�g�f�e�m 0 inputfolder inputFolder�l 0 	imagelist 	imageList�k  0 firstimagefile firstImageFile�j 0 	imagepath 	imagePath�i 0 imageliststr imageListStr�h 0 i  �g 0 	imagefile 	imageFile�f 0 imagepathstr imagePathStr�e 0 	imagetemp 	imageTemp� ��d�c�b�a�`�_�
�d 
file
�c 
cobj
�b 
alis
�a 
psxp
�` 
TEXT
�_ .corecnte****       ****�p j� ��-E�O��k/E�O��&�,E�UO��&E�O�j k = 7l�j kh � ��/E�O��&�,E�UO��&E�O�E�O��%�%E�[OY��Y hO�n �^�]�\���[�^ 80 getpythonpillowenvironment getPythonPillowEnvironment�] �Z��Z �  �Y�Y "0 preferencespath preferencesPath�\  � �X�W�V�X "0 preferencespath preferencesPath�W 0 
pythonpath 
pythonPath�V 0 
userchoice 
userChoice� �U�T�S!%(�R+�Q8�P>�OA�N�M�LY]�U 0 
fileexists 
fileExists
�T 
strq
�S .sysoexecTEXT���     TEXT
�R 
prmp
�Q .gtqpchltns    @   @ ns  
�P 
btns
�O 
dflt�N 
�M .sysodlogaskr        TEXT
�L 
cobj�[ a*�k+   ��,%j E�O�Y H���mv��l 	E�O�f  ���kv��� OhY hO�a k/E�Oa ��,%a %��,%j O� ascr  ��ޭ