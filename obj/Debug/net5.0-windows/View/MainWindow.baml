   M S B A M L   `   `   `  ����G  CImcPoidsMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ImcPoidsMVVMImcPoidsMVVM  5   	   "    ImcPoidsMVVM.View.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:ImcPoidsMVVM     5   	   -   5          �Name$  WinPoidsImc��5   	    � Title$ 
Calcul IMC��5   	   $	��800��6   $	��450��6)   $��Century Gothic)�65   .��5	      � -   5         �Name$ ImcPoids��5	      $��0,0,0,0q�6   $	��450��6.   $	��800��6:   .+�5
   
   �� $&�� Cacul de vos IMC et poids Idéal��6   $��Center=�6:   $	��Top=�6W   $	��310��6o   ���#AE1281$
��Bold"�6�   $��18(�6�   $��39��6�   $��0,20,0,0q�6�   �� 5   
   -   5         ��Name$ 	lblTaille��5      $��Votre taille (cm)��6#   $
��Left=�6?   $��	30,90,0,0q�6Z   $	��Top=�6m   $��35��6�   $	��142��6�   $��14(�6�   ���#859BF66�   �� 5   
   -   5        $ lblPoids��5      $��Votre poids (kg)��6"   $
��Left=�6=   $��
30,145,0,0q�6X   $	��Top=�6l   $��35��6�   $	��135��6�   $��14(�6�   ���#859BF66�   �� 5   
   -   5         ��Name$ txtBoxTaille��5      $
��Left=�6(   $��
208,90,0,0q�6C    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $��77��6�   $��27��6  $��14(�6  $��Center=�6  ��6W   ��  �� Path$ Taillecm� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�	 �� StringFormat$	 window heigh:{#:F0}��6  �� 5   
   -   5        $ txtBoxPoids��5      $
��Left=�6'   $��208,145,0,0q�6B   $
 Wrap=�6�   $	��Top=�6�   $��25��6�   $��77��6�   $��14(�6
  $��Center=�6  ��6W   �� $ Poids�$ TwoWay=�$ PropertyChanged=�$	 window heigh:{#:F0}��6  �� 5   
   -   5        $ lblSexe��5      $��Précisez votre sexe��6!   $
��Left=�6?   $��160,235,0,0q�6Z   $	��Top=�6o   $��34��6�   $	��173��6�   $��16(�6�   
 J� RenderTransformOrigin$
 
0.88,0.602&�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ btnFemme��5      $��Femme��6E   $
��Left=�6U   $��
94,286,0,0q�6p   $	��Top=�6�   $��38��6�   $	��110��6�   $��16(�6�   $
��Bold"�6�   ���#FFC0FF��6#   �� *btnFemmeClick+6�   �� 5   
   -	   5        $ btnHomme��5      $��Homme��6E   $
��Left=�6U   $��262,286,0,0q�6p   $	��Top=�6�   $��38��6�   $	��110��6�   $��16(�6�   $
��Bold"�6�   ���#C0FFFF��6#   �� *btnHommeClick+6�   �� 5   
   -
   5        $ lblVotreImc��5      $��	Votre IMC��6%   $��Center=�69   $��	0,384,0,0q�6V   $	��Top=�6i   $��18(�6�   ���#8094B76�   �� 5   
   -   5        $ 	lblValeur��5      $��Valeur��6#   $
��Left=�64   $��
91,419,0,0q�6O   $	��Top=�6c   $��14(�6{   $
��Bold"�6�   $��67��6�   �� 5   
   -   5        $ lblCategorie��5      $��
Catégorie��6&   $
��Left=�6:   $��294,419,0,0q�6U   $	��Top=�6j   $��14(�6�   $
��Bold"�6�   �� 5   
   -   5        $ txtBoxValeur��5         textboxOpacity#��[  6(   $
��Left=�6y   $��
30,465,0,0q�6�   $
 Wrap=�6  $	��Top=�6  $	��157��67  $��14(�6C  $
��Bold"�6Q   �� TextAlignment$ Center=�6c  ��6P   �� *BackgroundCouleur+��6�   �� $	 Imc�$ TwoWay=�$ PropertyChanged=�$	 {0:F2}��6c  �� 5   
   -   5        $ txtBoxCategorie��5      #��[  6+   $
��Left=�6|   $��268,465,0,0q�6�   $
 Wrap=�6�   $	��Top=�6  $	��157��6*  $��14(�66  $
��Bold"�6D  ��6S   �� *BackgroundCouleur+��6�   �� $ 	Categorie�$ TwoWay=�$ PropertyChanged=�6D  �� 5   
   -   5        $ lblIPoidsIdeal��5      $��Poids Idéal��6(   $
��Left=�6>   $��168,522,0,0q�6Y   $	��Top=�6n   $��18(�6�   ���#8094B7$
��Bold"�6�   �� 5   
   -   5        $ txtBoxPoidsIdeal��5      #��[  6,   $
��Left=�6T   $��168,572,0,0q�6o   $
 Wrap=�6�   $	��Top=�6  $��86��6  $��14(�6%  $��23��63  $ Center=�6?  ��6�   �� $ 
PoidsIdeal�$ TwoWay=�$ PropertyChanged=�$	 {0:F2}����6V  Z� �� 5   
   -   5        $ lblKg��5      $��Kg��6   $
��Left=�6,   $��255,570,0,0q�6G   $	��Top=�6\   $��16(�6t   $
��Bold"�6�   �� 5   
   -   5        $ 
btnQuitter��5        btnBlue#��[ 6%   $��Quitter��6g   $
��Left=�6y   $��325,688,0,0q�6�   $	��Top=�6�   $��16(�6�   $
��Bold"�6�   $��85��6�   ��6F   �� *QuitterAppli+6�   �� 5   
   -   5        $ 
btnNouveau��5      #��[ 6%   $��Nouveau��6h   $
��Left=�6z   $��225,688,0,0q�6�   $	��Top=�6�   $��16(�6�   $
��Bold"�6�   $��85��6�   ��6F   �� *NouveauCalcul+6�   5      5      