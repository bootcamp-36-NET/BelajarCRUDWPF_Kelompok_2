using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TUGASWPF.Contexts;
using TUGASWPF.Models;

namespace TUGASWPF
{
    /// <summary>
    /// Interaction logic for UserControlTransactionItem.xaml
    /// </summary>
    public partial class UserControlTransactionItem : UserControl
    {
        MyContext myContext = new MyContext();
        int cbIt,cbTran;
        public UserControlTransactionItem()
        {
            InitializeComponent();
            dgTransactionItem.ItemsSource = myContext.TransactionItem.ToList();
            cbTransaction.ItemsSource = myContext.Transaction.ToList();
            cbItem.ItemsSource = myContext.Item.ToList();
        }


        private void btnInsert_Click(object sender, RoutedEventArgs e)
        {
            var transaction = myContext.TransactionItem.Find(Convert.ToInt32(cbTransaction));
            var item = myContext.Item.Find(Convert.ToInt32(cbTransaction));
            if (txtQuantity.Text.Equals("") || transaction == null || item == null)
            {
                MessageBox.Show("Input cant be null");
            }
            else
            {
                MessageBoxResult result = MessageBox.Show("Are you sure want to Insert this data ?", "Insert Arlet!!!", MessageBoxButton.YesNo);
                switch (result)
                {
                    case MessageBoxResult.Yes:
                        var input = new TransactionItem();
                        myContext.TransactionItem.Add(input);
                        myContext.SaveChanges();
                        MessageBox.Show("1 row has benn inserted");

                        dgTransactionItem.ItemsSource = myContext.TransactionItem.ToList();
                        break;
                    case MessageBoxResult.No:
                        break;
                }

            }

        }


        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {

            MessageBoxResult result = MessageBox.Show("Are you sure want to Update this data ?", "Update Arlet!!!", MessageBoxButton.YesNo);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    var item = myContext.Item.Find(Convert.ToInt32(cbItem));
                    var transaction = myContext.Transaction.Find(Convert.ToInt32(cbTransaction));
                    int Id = Convert.ToInt32(txtId.Text);
                    var TransactionItem = myContext.TransactionItem.Find(Id);
                    TransactionItem.Quantity = Convert.ToInt32(txtQuantity.Text);
                    TransactionItem.Transaction = transaction;
                    TransactionItem.Item = item;
                    myContext.SaveChanges();
                    MessageBox.Show("1 row has been updated");
                    dgTransactionItem.ItemsSource = myContext.TransactionItem.ToList();
                    break;
                case MessageBoxResult.No:
                    MessageBox.Show("Wrong Input Data");
                    break;
            }

        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are you sure want to delete this data ?", "Delete Arlet!!!", MessageBoxButton.YesNo);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    int Id = Convert.ToInt32(txtId.Text);
                    var transactionitem = myContext.TransactionItem.Find(Id);
                    myContext.TransactionItem.Remove(transactionitem);
                    myContext.SaveChanges();
                    MessageBox.Show("1 row has been deleted");
                    dgTransactionItem.ItemsSource = myContext.TransactionItem.ToList();
                    break;
                case MessageBoxResult.No:
                    break;
            }

        }

        private void txtId_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

        }

        private void dgTransactionItem_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var transactionitem = dgTransactionItem.SelectedItem as TransactionItem;
            if (dgTransactionItem.SelectedItem != null)
            {
                if (transactionitem.Item == null)
                {

                    txtQuantity.Text = Convert.ToString(transactionitem.Quantity);
                    txtId.Text = Convert.ToString(transactionitem.Id);
                }
                else
                {
                    txtQuantity.Text = Convert.ToString(transactionitem.Quantity);
                    txtId.Text = Convert.ToString(transactionitem.Id);
                    cbTransaction.Text = transactionitem.Transaction.Id;
                }
            }
        }

        private void TabablzControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void txtSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            var filteredData = myContext.TransactionItem.Where(Q => Q.Id.ToString().Contains(txtSearch.Text) || Q.Quantity.ToString().Contains(txtSearch.Text)).ToList();
            dgTransactionItem.ItemsSource = filteredData;
        }


        private void txtPrice_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

        }

        private void txtStock_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

        }

        private void txtSupplier_Id_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

        }

        private void cbTransaction_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            cbTran = Convert.ToInt32(cbTransaction.SelectedValue.ToString());
        }

        private void dgTransactionItem_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btnRefresh_Click(object sender, RoutedEventArgs e)
        {

        }

        private void cbItem_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            cbIt = Convert.ToInt32(cbItem.SelectedValue.ToString());

        }
    }
}
