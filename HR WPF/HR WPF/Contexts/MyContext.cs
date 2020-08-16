using HR_WPF.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR_WPF.Contexts
{
    class MyContext : DbContext
    {
        public MyContext(): base("HRWPF") { }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Item> Item { get; set; }
        public DbSet<Transaction> Transaction { get; set; }
        public DbSet<TransactionItem> TransactionItem { get; set; }

    }
}
