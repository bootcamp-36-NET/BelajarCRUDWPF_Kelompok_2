using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TUGASWPF.Models;

namespace TUGASWPF.Contexts
{
    class MyContext : DbContext
    {
        public MyContext() : base("TUGASWPF") { }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<Item> Item { get; set; }
    }
}
