   M S B A M L   `   `   `  ����C  ?TUGASWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:TUGASWPFTUGASWPF  5      %    TUGASWPF.UserControlTransaction   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:TUGASWPF     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      
�������$	��540��5	   K   $
��1010��6X   .��5
      �   � ColumnDefinitions  5   
   �� 5      $
��1.4* �6   �� 5      $��1* �6   .+�5   
   � $��0��6    � RowDefinitions 5      �� 5      $
��0.3* �6    �� 5      $
��2.5* �6    .+�5      �� $��10q�6   $��Center=�6%   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� 
�������$��25(�62   $��Table : ��6@   �� 5      $��Transaction��6    $��25(�63   
���   �$	��5 0q�6T   $
��Bold"�6a   5      5      �� 5      $��1��6   
���   �$��1q�66   $��10q�6J    �� CornerRadius$ 5��6V   $	��400��6g   ._�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgTransaction��5      $
��Left=�62   $	��380��6M   $��9,0,0,9q�6Z   $��Bottom=�6k   $	��549��6�   "   VerticalScrollBarVisibility$ Visible=�6�      AutoGenerateColumns .     
IsReadOnly . 
�������   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Transaction ID��6-   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 120 5   D   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *Id+6D     5      $	 
Order Date��6-   $	
 150 5    K    6-   �� *	OrderDate+6K   4  .System.Windows.Controls.DataGridTemplateColumn  5!      $	 Action��61   $	
 100 6A      CellTemplate 5"      �� 5#   "   .R�5$   &   �� -   5        .��5$   F   Delete6N   5%   #   5'      5)      5*      5+      � 5,   
   $��1��6   .+�5-      �� .+�5.      �� -   5         ��Name$ 	txtSearch��5.      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6-    %  !MaterialDesignFloatingHintTextBox#��[  6�   $��10,90,0,152q�6�   $
��Left=�6�   $	��350��6�   ���	#FF3636366�   5/      �� 50      .+�51      �� -   5         ��Name$ 	btnSearch��51      $��Search��6,   $��Center=�6=   $	��Top=�6Z   $��88��6s   ���	#FF363636$��272,150,61,216q�6�   6�   52      �� 53      .+�54      �� -   5        $ txtId��54      $ Transaction ID��6)   #��[  6�   $��10,270,0,152q�6�   $
��Left=�6�   $	��350��6�    �� 
IsReadOnly . ���	#FF3636366  55      �� 56      $ Vertical=�6   .+�57      (  "System.Windows.Controls.DatePicker  -   5          Name$ DpOrderDate��57      $��90,330,62,216q�62      Text$
 Date��6I   
���   �6j   58      �� 59      .+�5:      �� $��Order Date :��6   $��10,330,334,216q�60   $��16(�6H   ���	#FF3636366o   5;      �� 5<      .+�5=      �� -   5        $ 
btnRefresh��5=      $��Refresh��6-   $��Center=�6?   $	��Top=�6\   $��88��6t   ���	#FF363636$��272,370,61,216q�6�   6�   5>      �� 5?      .+�5@      �� -   5        $ 	btnUpdate��5@      $��Update��6,   $
��Left=�6=   $��142,370,0,216q�6X   $	��Top=�6o   $��88��6�   ���	#FF3636366�   5A      �� 5B      .+�5C      �� -	   5        $ 	btnInsert��5C      $
��Save��6,   $
��Left=�6;   $	��Top=�6V   $��88��6n   ���	#FF363636$��10,370,0,216q�6�   5D      5E      �� 5F   
   $��Label��6   $��2��6    $
��Left=�60   $��0��6K   $��258,118,-65,0q�6V   $	��Top=�6m   $��26��6�   5G      5H      