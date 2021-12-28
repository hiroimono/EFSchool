using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstRepeat
{
	internal static class Program
	{
		static void Main(string[] args)
		{
			EFSchoolRepeatContext context = new EFSchoolRepeatContext();
			List<Customer> customers = context.Customers.ToList();
			List<Employee> employees = context.Employees.ToList();

			Console.WriteLine("Customers: ");
			Console.WriteLine("-----------------------\n");
			foreach (var item in customers)
			{
				Console.WriteLine(item.FirstName + ' ' + item.LastName);
			}
			Console.WriteLine("-----------------------\n\n\n");

			Console.WriteLine("employees: ");
			Console.WriteLine("-----------------------");
			foreach (var item in employees)
			{
				Console.WriteLine(item.FirstName + ' ' + item.LastName);
			}
			Console.WriteLine("-----------------------\n\n\n");
		}
	}
}
