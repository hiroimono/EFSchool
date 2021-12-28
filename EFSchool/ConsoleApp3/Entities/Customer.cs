using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst.Entities
{
	[Table("Customer")]
	internal class Customer
	{
		public int Id { get; set; }
		public string FirstName { get; set; }
		public string Lastname { get; set; }

	}
}
