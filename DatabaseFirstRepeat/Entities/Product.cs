using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstRepeat.Entities
{
	[Table("Product")]
	internal class Product
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public decimal Amount { get; set; }
	}
}
