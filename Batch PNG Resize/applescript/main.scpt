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
 l     ��������  ��  ��        l      ��  ��   *******************************************************************************
	Gathers the input folder with images, the output folder with the resized images
	and the size expected.
*******************************************************************************     �   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 G a t h e r s   t h e   i n p u t   f o l d e r   w i t h   i m a g e s ,   t h e   o u t p u t   f o l d e r   w i t h   t h e   r e s i z e d   i m a g e s 
 	 a n d   t h e   s i z e   e x p e c t e d . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *      l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k     �       r     	    I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   P C h o o s e   t h e   f o l d e r   w i t h   i m a g e s   t o   r e s i z e .��    o      ����  0 documentfolder documentFolder     !   r   
  " # " I  
 ���� $
�� .sysostflalis    ��� null��   $ �� %��
�� 
prmp % m     & & � ' ' 2 C h o o s e   t h e   e x p o r t   f o l d e r .��   # o      ���� ,0 documentfolderexport documentFolderExport !  ( ) ( r     * + * I    �������� 0 getimagesize getImageSize��  ��   + o      ���� 0 widthheight widthHeight )  , - , l   ��������  ��  ��   -  . / . l    �� 0 1��   0VP***************************************************************************
	Repeat  the operation that consists of sending requests to the ExtendScript
	file 'resizeAndExport.jsx' which will resize and export all the images in the
	folders specified earlier.
	***************************************************************************    1 � 2 2� * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 R e p e a t     t h e   o p e r a t i o n   t h a t   c o n s i s t s   o f   s e n d i n g   r e q u e s t s   t o   t h e   E x t e n d S c r i p t 
 	 f i l e   ' r e s i z e A n d E x p o r t . j s x '   w h i c h   w i l l   r e s i z e   a n d   e x p o r t   a l l   t h e   i m a g e s   i n   t h e 
 	 f o l d e r s   s p e c i f i e d   e a r l i e r . 
 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  3 4 3 l   ��������  ��  ��   4  5 6 5 Z    � 7 8���� 7 l     9���� 9 >     : ; : o    ���� 0 widthheight widthHeight ; J    ����  ��  ��   8 k   # � < <  = > = O   # - ? @ ? r   ' , A B A n   ' * C D C 2  ( *��
�� 
file D o   ' (����  0 documentfolder documentFolder B o      ���� 0 	imagelist 	imageList @ m   # $ E E�                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   >  F G F l  . .��������  ��  ��   G  H�� H Z   . � I J���� I ?   . 5 K L K l  . 3 M���� M I  . 3�� N��
�� .corecnte****       **** N o   . /���� 0 	imagelist 	imageList��  ��  ��   L m   3 4����   J Y   8 � O�� P Q�� O k   F � R R  S T S O   F { U V U k   J z W W  X Y X r   J P Z [ Z n   J N \ ] \ 4   K N�� ^
�� 
cobj ^ o   L M���� 0 i   ] o   J K���� 0 	imagelist 	imageList [ o      ���� 0 	imagefile 	imageFile Y  _ ` _ r   Q Z a b a n   Q V c d c 1   T V��
�� 
psxp d l  Q T e���� e c   Q T f g f o   Q R���� 0 	imagefile 	imageFile g m   R S��
�� 
alis��  ��   b o      ���� 0 	imagepath 	imagePath `  h i h r   [ f j k j n   [ b l m l 1   ` b��
�� 
psxp m l  [ ` n���� n I  [ `�� o��
�� .earsffdralis        afdr o  f   [ \��  ��  ��   k o      ���� 0 currentfolder currentFolder i  p�� p r   g z q r q I  g v�� s��
�� .sysoexecTEXT���     TEXT s b   g r t u t m   g j v v � w w  d i r n a m e   u n   j q x y x 1   m q��
�� 
strq y o   j m���� 0 currentfolder currentFolder��   r o      ���� 0 currentfolder currentFolder��   V m   F G z z�                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   T  { | { l  | |��������  ��  ��   |  } ~ } r   | �  �  I   | ��� ����� $0 removelastfolder removeLastFolder �  ��� � o   } ����� 0 currentfolder currentFolder��  ��   � o      ���� $0 downgradedfolder downgradedFolder ~  � � � r   � � � � � b   � � � � � o   � ����� $0 downgradedfolder downgradedFolder � m   � � � � � � � ( / r e s i z e A n d E x p o r t . j s x � o      ���� $0 resizescriptpath resizeScriptPath �  � � � l  � ���������  ��  ��   �  ��� � Q   � � � � � � O   � � � � � I  � ��� � �
�� .miscDjxMnull���     **** � 4   � ��� �
�� 
file � o   � ����� $0 resizescriptpath resizeScriptPath � �� ���
�� 
JArg � J   � � � �  � � � o   � ����� 0 	imagepath 	imagePath �  � � � n   � � � � � 1   � ���
�� 
psxp � o   � ����� ,0 documentfolderexport documentFolderExport �  � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 widthheight widthHeight �  ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 widthheight widthHeight��  ��   � m   � � � ��                                                                                  8BIM  alis    �  Macintosh HD               ��2BD ����Adobe Photoshop 2025.app                                       �����2�p        ����  
 cu             Adobe Photoshop 2025  =/:Applications:Adobe Photoshop 2025:Adobe Photoshop 2025.app/   2  A d o b e   P h o t o s h o p   2 0 2 5 . a p p    M a c i n t o s h   H D  :Applications/Adobe Photoshop 2025/Adobe Photoshop 2025.app  / ��   � R      ������
�� .ascrerr ****      � ****��  ��   � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � * P h o t o s h o p   i s   n o t   o p e n � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  C a n c e l��   � �� ���
�� 
dflt � m   � � � � � � �  C a n c e l��  ��  �� 0 i   P m   ; <����  Q I  < A�� ���
�� .corecnte****       **** � o   < =���� 0 	imagelist 	imageList��  ��  ��  ��  ��  ��  ��   6  � � � l  � ���������  ��  ��   �  ��� � O   � � � � � I  � ��� ���
�� .aevtodocnull  �    alis � o   � ����� ,0 documentfolderexport documentFolderExport��   � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��     � � � l     �������  ��  �   �  � � � l      �~ � ��~   � *******************************************************************************
	Function that asks the user the desired width and height of the ouput images
	
		--> widthHeight = {width, height} : list
*******************************************************************************    � � � �4 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 F u n c t i o n   t h a t   a s k s   t h e   u s e r   t h e   d e s i r e d   w i d t h   a n d   h e i g h t   o f   t h e   o u p u t   i m a g e s 
 	 
 	 	 - - >   w i d t h H e i g h t   =   { w i d t h ,   h e i g h t }   :   l i s t 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * �  � � � l     �}�|�{�}  �|  �{   �  � � � i    � � � I      �z�y�x�z 0 getimagesize getImageSize�y  �x   � k     � � �  � � � I    �w � �
�w .sysodlogaskr        TEXT � m      � � � � � 6 E n t e r   t h e   o u p u t   w i d t h   ( p x ) : � �v � �
�v 
dtxt � m     � � � � �   � �u � �
�u 
btns � J     � �  � � � m     � � � � �  C a n c e l �  ��t � m     � � � � �  V a l i d a t e�t   � �s ��r
�s 
dflt � m   	 
 � � � � �  V a l i d a t e�r   �  � � � r     � � � l    ��q�p � 1    �o
�o 
rslt�q  �p   � o      �n�n 0 
userresult 
userResult �  � � � l   �m�l�k�m  �l  �k   �  � � � Z    � � ��j � � =    � � � l    ��i�h � n     � � � 1    �g
�g 
bhit � o    �f�f 0 
userresult 
userResult�i  �h   � m     � � � � �  V a l i d a t e � k    � � �  � � � r      � � � l    ��e�d � n     � � � 1    �c
�c 
ttxt � o    �b�b 0 
userresult 
userResult�e  �d   � o      �a�a 0 	widthtext 	widthText �  ��` � Q   ! � � �  � k   $ �  r   $ ) c   $ ' o   $ %�_�_ 0 	widthtext 	widthText m   % &�^
�^ 
long o      �]�] 	0 width   	 Z   * I
�\�[
 A   * - o   * +�Z�Z 	0 width   m   + ,�Y�Y  k   0 E  I  0 A�X
�X .sysodlogaskr        TEXT m   0 1 �   U n v a l i d   i n t e g e r . �W
�W 
btns J   2 7 �V m   2 5 �  C a n c e l�V   �U�T
�U 
dflt m   8 ; �  C a n c e l�T   �S L   B E J   B D�R�R  �S  �\  �[  	  !  l  J J�Q�P�O�Q  �P  �O  ! "#" I  J b�N$%
�N .sysodlogaskr        TEXT$ m   J M&& �'' 8 E n t e r   t h e   o u p u t   h e i g h t   ( p x ) :% �M()
�M 
dtxt( m   N Q** �++  ) �L,-
�L 
btns, J   R Z.. /0/ m   R U11 �22  C a n c e l0 3�K3 m   U X44 �55  V a l i d a t e�K  - �J6�I
�J 
dflt6 m   [ ^77 �88  V a l i d a t e�I  # 9:9 r   c f;<; l  c d=�H�G= 1   c d�F
�F 
rslt�H  �G  < o      �E�E 0 
userresult 
userResult: >?> l  g g�D�C�B�D  �C  �B  ? @�A@ Z   g �AB�@�?A =  g nCDC l  g jE�>�=E n   g jFGF 1   h j�<
�< 
bhitG o   g h�;�; 0 
userresult 
userResult�>  �=  D m   j mHH �II  V a l i d a t eB k   q �JJ KLK r   q vMNM l  q tO�:�9O n   q tPQP 1   r t�8
�8 
ttxtQ o   q r�7�7 0 
userresult 
userResult�:  �9  N o      �6�6 0 
heighttext 
heightTextL R�5R Q   w �STUS k   z �VV WXW r   z YZY c   z }[\[ o   z {�4�4 0 
heighttext 
heightText\ m   { |�3
�3 
longZ o      �2�2 
0 height  X ]�1] Z   � �^_�0�/^ A   � �`a` o   � ��.�. 
0 height  a m   � ��-�- _ k   � �bb cdc I  � ��,ef
�, .sysodlogaskr        TEXTe m   � �gg �hh   U n v a l i d   i n t e g e r .f �+ij
�+ 
btnsi J   � �kk l�*l m   � �mm �nn  O K�*  j �)o�(
�) 
dflto m   � �pp �qq  O K�(  d r�'r L   � �ss J   � ��&�&  �'  �0  �/  �1  T R      �%�$�#
�% .ascrerr ****      � ****�$  �#  U I  � ��"tu
�" .sysodlogaskr        TEXTt m   � �vv �ww   U n v a l i d   i n t e g e r .u �!xy
�! 
btnsx J   � �zz {� { m   � �|| �}}  C a n c e l�   y �~�
� 
dflt~ J   � � ��� m   � ��� ���  C a n c e l�  �  �5  �@  �?  �A   � R      ���
� .ascrerr ****      � ****�  �    I  � ����
� .sysodlogaskr        TEXT� m   � ��� ���   U n v a l i d   i n t e g e r .� ���
� 
btns� J   � ��� ��� m   � ��� ���  C a n c e l�  � ���
� 
dflt� J   � ��� ��� m   � ��� ���  C a n c e l�  �  �`  �j   � L   � ��� J   � ���   � ��� r   � ���� J   � ��� ��� o   � ��� 0 	widthtext 	widthText� ��� o   � ��� 0 
heighttext 
heightText�  � o      �� 0 widthheight widthHeight� ��� L   � ��� o   � ��� 0 widthheight widthHeight�   � ��� l     ���
�  �  �
  � ��� l      �	���	  ���*******************************************************************************
	Takes as input a string corresponding to a path and returns the path downgraded
	by one folder level.
	
	folderName : POSIX path or string
		--> newPath : string
	
	e.g. : 
		removeLastFolder("/path/to/image.png") = "/path/to"
		removeLastFolder("/path/to/image/") = "/path/to"
*******************************************************************************   � ���l * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 	 T a k e s   a s   i n p u t   a   s t r i n g   c o r r e s p o n d i n g   t o   a   p a t h   a n d   r e t u r n s   t h e   p a t h   d o w n g r a d e d 
 	 b y   o n e   f o l d e r   l e v e l . 
 	 
 	 f o l d e r N a m e   :   P O S I X   p a t h   o r   s t r i n g 
 	 	 - - >   n e w P a t h   :   s t r i n g 
 	 
 	 e . g .   :   
 	 	 r e m o v e L a s t F o l d e r ( " / p a t h / t o / i m a g e . p n g " )   =   " / p a t h / t o " 
 	 	 r e m o v e L a s t F o l d e r ( " / p a t h / t o / i m a g e / " )   =   " / p a t h / t o " 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *� ��� l     ����  �  �  � ��� i   ��� I      ���� $0 removelastfolder removeLastFolder� ��� o      �� 0 
foldername 
folderName�  �  � k     3�� ��� O     0��� k    /�� ��� r    	��� m    �� ���  /� n     ��� 1    � 
�  
txdl� 1    ��
�� 
ascr� ��� r   
 ��� n   
 ��� 2   ��
�� 
citm� o   
 ���� 0 
foldername 
folderName� o      ���� 0 	pathitems 	pathItems� ��� r    #��� n    !��� 7  !����
�� 
cobj� m    ���� � l    ������ \     ��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 	pathitems 	pathItems��  ��  ��  � m    ���� ��  ��  � o    ���� 0 	pathitems 	pathItems� o      ���� 0 	pathitems 	pathItems� ��� r   $ )��� m   $ %�� ���  /� n     ��� 1   & (��
�� 
txdl� 1   % &��
�� 
ascr� ���� r   * /��� l  * -������ c   * -��� o   * +���� 0 	pathitems 	pathItems� m   + ,��
�� 
ctxt��  ��  � o      ���� 0 userhome userHome��  � m     ���                                                                                  MACS  alis    @  Macintosh HD               ��2BD ����
Finder.app                                                     ������2        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L   1 3�� o   1 2���� 0 userhome userHome��  �       ��������  � ������
�� .aevtoappnull  �   � ****�� 0 getimagesize getImageSize�� $0 removelastfolder removeLastFolder� �� ��������
�� .aevtoappnull  �   � ****��  ��  � ���� 0 i  � '�� ���� &������ E�������������������� v�������� ��� ����������� ��� ��� �����
�� 
prmp
�� .sysostflalis    ��� null��  0 documentfolder documentFolder�� ,0 documentfolderexport documentFolderExport�� 0 getimagesize getImageSize�� 0 widthheight widthHeight
�� 
file�� 0 	imagelist 	imageList
�� .corecnte****       ****
�� 
cobj�� 0 	imagefile 	imageFile
�� 
alis
�� 
psxp�� 0 	imagepath 	imagePath
�� .earsffdralis        afdr�� 0 currentfolder currentFolder
�� 
strq
�� .sysoexecTEXT���     TEXT�� $0 removelastfolder removeLastFolder�� $0 downgradedfolder downgradedFolder�� $0 resizescriptpath resizeScriptPath
�� 
JArg�� 
�� .miscDjxMnull���     ****��  ��  
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT
�� .aevtodocnull  �    alis�� �*��l E�O*��l E�O*j+ E�O�jv �� ��-E�UO�j j � �k�j kh  � 2��/E�O��&�,E` O)j �,E` Oa _ a ,%j E` UO*_ k+ E` O_ a %E` O +a  !*�_ /a _ ��,��k/��l/a vl UW X  a  a !a "kva #a $a  %[OY�cY hY hO� �j &U� �� ����������� 0 getimagesize getImageSize��  ��  � �������������� 0 
userresult 
userResult�� 0 	widthtext 	widthText�� 	0 width  �� 0 
heighttext 
heightText�� 
0 height  �� 0 widthheight widthHeight� $ ��� ��� � ��� ��������� �������&*147Hgmp����v|����
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
bhit
�� 
ttxt
�� 
long�� ��  ��  �� �������lv��� 	O�E�O��,�  ɠ�,E�O ���&E�O�k ��a kv�a a  	OjvY hOa �a �a a lv�a � 	O�E�O��,a   R��,E�O ,��&E�O�k a �a kv�a a  	OjvY hW X  a �a kv�a  kva  	Y hW X  a !�a "kv�a #kva  	Y jvO��lvE�O�� ������������� $0 removelastfolder removeLastFolder�� ����� �  ���� 0 
foldername 
folderName��  � �������� 0 
foldername 
folderName�� 0 	pathitems 	pathItems�� 0 userhome userHome� 	���������������
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj
�� .corecnte****       ****
�� 
ctxt�� 4� -���,FO��-E�O�[�\[Zk\Z�j k2E�O���,FO��&E�UO�ascr  ��ޭ