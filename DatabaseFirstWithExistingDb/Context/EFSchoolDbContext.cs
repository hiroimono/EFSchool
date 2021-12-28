using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DatabaseFirstWithExistingDb
{
	public partial class EFSchoolDbContext : DbContext
	{
		public EFSchoolDbContext()
			: base("name=EFSchoolDbContext")
		{
		}

		public virtual DbSet<Customer> Customer { get; set; }
		public virtual DbSet<Employee> Employee { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
		}
	}
}
