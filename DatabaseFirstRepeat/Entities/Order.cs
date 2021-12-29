using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstRepeat.Entities
{
	[Table("Order")]
	internal class Order
	{
		public int Id { get; set; }
		public Customer Customer { get; set; }
		public Product Product { get; set; }
		public decimal Amount { get; set; }
	}
}
