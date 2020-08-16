using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HR_WPF.Models
{
    [Table("tb_m_supplier")]
    public class Supplier
    {
        [Key]
        public string Id { get; set; }
        public string Name { get; set; }
        public DateTime? JoinDate { get; set; }

        public Supplier()
        {

        }

        public Supplier(string name)
        {
            this.Name = name;
        }

        public Supplier(string name, DateTime date)
        {
            this.Name = name;
            this.JoinDate = date;
        }
    }
}
