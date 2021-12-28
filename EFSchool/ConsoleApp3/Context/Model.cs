using CodeFirst.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst.Context
{
	internal class Model
	{
		public DbSet<Customer> Customer { get; set; }

	}
}
