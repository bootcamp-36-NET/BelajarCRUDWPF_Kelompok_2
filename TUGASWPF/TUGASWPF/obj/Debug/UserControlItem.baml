   M S B A M L   `   `   `  ����C  ?TUGASWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:TUGASWPFTUGASWPF  5          TUGASWPF.UserControlItem   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:TUGASWPF     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      
�������$	��540��5	   K   $
��1010��6X   .��5
      �   � ColumnDefinitions  5   
   �� 5      $
��1.4* �6   �� 5      $��1* �6   .+�5   
   � $��0��6    � RowDefinitions 5      �� 5      $
��0.3* �6    �� 5      $
��2.5* �6    .+�5      �� $��10q�6   $��Center=�6%   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� 
�������$��25(�62   $��Table : ��6@   �� 5      $
��Item��6    $��25(�6,   
���   �$	��5 0q�6M   $
��Bold"�6Z   5      5      �� 5      $��1��6   
���   �$��1q�66   $��10q�6J    �� CornerRadius$ 5��6V   $	��400��6g   ._�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgItem��5      $��Center=�6+   $	��380��6H   $	��Top=�6W   $	��549��6o   "   VerticalScrollBarVisibility$ Visible=�6�      AutoGenerateColumns .     
IsReadOnly . 
�������$��9,9,9,0q�6     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Item ID��6-   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 80 5   D   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6-   �� *Id+6D     5      $	 	Item Name��6-   $	
 120 5    J    61   �� *Name+6J     5!      $	 Price��6-   $
 80 5"   G    6-   �� *Price+6G     5#      $	 Stock��6-   $
 60 5$   G    6-   �� *Stock+6G     5%      $	 Supplier��6-   $
 95 5&   M    6-   �� *Supplier.Id+6M   4  .System.Windows.Controls.DataGridTemplateColumn  5'      $	 Action��61      CellTemplate 5(      �� 5)   "   .R�5*   &   �� -   5        .��5*   F   Delete6N   5+   #   5-      5/      50      51      � 52   
   $��1��6   .+�53      �� .+�54      �� -   5         ��Name$ 	txtSearch��54      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search��6-    %  !MaterialDesignFloatingHintTextBox#��[  6�   $��10,90,0,152q�6�   $
��Left=�6�   $	��350��6�   ���	#FF3636366�   55      �� 56      .+�57      �� -   5         ��Name$ 	btnSearch��57      $��Search��6,   $��Center=�6=   $	��Top=�6Z   $��88��6s   ���	#FF363636$��272,150,61,216q�6�   6�   58      �� 59      .+�5:      �� -   5        $ txtId��5:      $ Item ID��6)   #��[  6|   $��10,230,0,152q�6�   $
��Left=�6�   $	��350��6�    �� 
IsReadOnly . ���	#FF3636366  5;      �� 5<      .+�5=      �� -   5        $ txtName��5=      $ 	Item Name��6+   #��[  6�   $��10,270,0,152q�6�   $
��Left=�6�   $	��350��6�    �� SelectionBrush
 �   ����	#FF3636366  5>      �� 5?      .+�5@      �� -   5        $ txtPrice��5@      $ Price��6,   #��[  6�   $��10,310,0,152q�6�   $
��Left=�6�   $	��350��6�   
 �   ����	#FF3636366  5A      �� 5B      .+�5C      �� -   5        $ txtStock��5C      $ Stock��6,   #��[  6�   $��10,350,0,152q�6�   $
��Left=�6�   $	��350��6�   
 �   ����	#FF3636366  5D      �� 5E      .+�5F      �� -	   5         ��Name$ 
cbSupplier��5F       �� DisplayMemberPath$
 Name��6P    �� SelectedValuePath$ Id��6i   $
��Left=�6�   $��
83,400,0,0q�6�   $	��Top=�6�   $	��275��6�   $��30��6�   
���   �$��Roboto Light)�6"  ��6/   �� *
Supplier+6"  5G      �� 5H      .+�5I      �� -
   5        $ 
btnRefresh��5I      $��Refresh��6-   $��Center=�6?   $	��Top=�6\   $��88��6t   ���	#FF363636$��271,450,62,216q�6�   6�   5J      �� 5K      .+�5L      �� $��
Supplier :��6   $��10,400,341,216q�6.   $��16(�6F   ���	#FF3636366m   5M      �� 5N      .+�5O      �� -   5        $ 	btnUpdate��5O      $��Update��6,   $
��Left=�6=   $��144,450,0,216q�6X   $	��Top=�6o   $��88��6�   ���	#FF3636366�   5P      �� 5Q      .+�5R      �� -   5        $ 	btnInsert��5R      $
��Save��6,   $
��Left=�6;   $	��Top=�6V   $��88��6n   ���	#FF363636$��10,450,0,216q�6�   5S      5T      �� 5U   
   $��Label��6   $��2��6    $
��Left=�60   $��0��6K   $��258,118,-65,0q�6V   $	��Top=�6m   $��26��6�   5V      5W      