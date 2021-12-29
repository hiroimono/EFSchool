﻿using DatabaseFirstRepeat.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstRepeat.Context
{
	internal class EFSchoolContext : DbContext
	{
		public EFSchoolContext() : base("name=DefaultConn")
		{
		}

		public DbSet<Product> Products { get; set; }
		public DbSet<Customer> Customers { get; set; }
		public DbSet<Order> Orders { get; set; }
	}
}
