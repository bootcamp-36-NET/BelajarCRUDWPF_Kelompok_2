   M S B A M L   `   `   `  ����C  ?TUGASWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:TUGASWPFTUGASWPF  5      )    #TUGASWPF.UserControlTransactionItem   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:TUGASWPF     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      
�������$	��540��5	   K   $
��1010��6X   .��5
      �   � ColumnDefinitions  5   
   �� 5      $
��1.4* �6   �� 5      $��1* �6   .+�5   
   � $��0��6    � RowDefinitions 5      �� 5      $
��0.3* �6    �� 5      $
��2.5* �6    .+�5      �� $��10q�6   $��Center=�6%   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� 
�������$��25(�62   $��Table : ��6@   �� 5      $��TransactionItem��6    $��25(�67   
���   �$	��5 0q�6X   $
��Bold"�6e   5      5      �� 5      $��1��6   
���   �$��1q�66   $��10q�6J    �� CornerRadius$ 5��6V   $	��400��6g   ._�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgTransactionItem��5      $��Center=�66   $	��380��6S   $	��Top=�6b   $	��549��6z   "   VerticalScrollBarVisibility$ Visible=�6�      AutoGenerateColumns .     
IsReadOnly . 
�������$��9,9,9,0q�6%     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Trans_item ID��6-   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 5   D   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *Id+6D     5      $	 Quantity��6-   $	
 100 5    J    6-   �� *
Quantity+6J     5!      $	 Transaction ID��6-   $	
 120 5"   P    6-   �� *Transaction.Id+6P     5#      $	 Item ID��6-   $	
 100 5$   I    6-   �� *	Item.Id+6I   4  .System.Windows.Controls.DataGridTemplateColumn  5%      $	 Action��61      CellTemplate 5&      �� 5'   "   .R�5(   &   �� -   5        .��5(   F   Delete6N   5)   #   5+      5-      5.      5/      � 50   
   $��1��6   .+�51      �� .+�52      �� -   5         ��Name$ 	txtSearch��52      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6-    %  !MaterialDesignFloatingHintTextBox#��[  6�   $��10,90,0,152q�6�   $
��Left=�6�   $	��350��6�   ���	#FF3636366�   53      �� 54      .+�55      �� -   5         ��Name$ 	btnSearch��55      $��Search��6,   $��Center=�6=   $	��Top=�6Z   $��88��6s   ���	#FF363636$��272,150,61,216q�6�   6�   56      �� 57      .+�58      �� -   5        $ txtId��58      $ Transaction Item ID��6)   #��[  6�   $��10,250,0,152q�6�   $
��Left=�6�   $	��350��6�    �� 
IsReadOnly . ���	#FF3636366  59      �� 5:      .+�5;      �� -   5        $ txtQuantity��5;      $ Quantity��6/   #��[  6�   $��10,300,0,152q�6�   $
��Left=�6�   $	��350��6�    �� SelectionBrush
 �   ����	#FF3636366/  5<      �� 5=      .+�5>      �� -   5         ��Name$ cbTransaction��5>      $
��Left=�63   $��83,350,0,152q�6N   $	��Top=�6d   $	��275��6|   $��30��6�   
���   �$��Roboto Light)�6�   5?      �� 5@      .+�5A      �� -   5        $ cbItem��5A       �� DisplayMemberPath$
 Name��6H    �� SelectedValuePath$ Id��6a   $
��Left=�6y   $��
83,400,0,0q�6�   $	��Top=�6�   $	��275��6�   $��30��6�   
���   �$��Roboto Light)�6  ��6+   �� *Item+6  5B      �� 5C      .+�5D      �� -	   5        $ 
btnRefresh��5D      $��Refresh��6-   $��Center=�6?   $	��Top=�6\   $��88��6t   ���	#FF363636$��271,450,62,216q�6�   6�   5E      �� 5F      .+�5G      �� $��Trans :��6   $��10,360,341,216q�6+   $��16(�6C   ���	#FF3636366j   5H      �� 5I      .+�5J      �� $��Item :��6   $��10,400,341,216q�6*   $��16(�6B   ���	#FF3636366i   5K      �� 5L      .+�5M      �� -
   5        $ 	btnUpdate��5M      $��Update��6,   $
��Left=�6=   $��144,450,0,216q�6X   $	��Top=�6o   $��88��6�   ���	#FF3636366�   5N      �� 5O      .+�5P      �� -   5        $ 	btnInsert��5P      $
��Save��6,   $
��Left=�6;   $	��Top=�6V   $��88��6n   ���	#FF363636$��10,450,0,216q�6�   5Q      5R      �� 5S   
   $��Label��6   $��2��6    $
��Left=�60   $��0��6K   $��258,118,-65,0q�6V   $	��Top=�6m   $��26��6�   5T      5U      