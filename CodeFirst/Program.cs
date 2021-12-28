using CodeFirst.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst
{
	internal static class Program
	{
		static void Main(string[] args)
		{
			Context.Model dbContext = new Context.Model();
			var customers = dbContext.Customer.ToList();

			foreach (var customer in customers)
			{
				Console.WriteLine($"{customer.Id}: {customer.FirstName} {customer.LastName}");
			}
		}
	}
}
