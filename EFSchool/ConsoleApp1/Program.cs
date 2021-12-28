using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirst
{
	internal static class Program
	{
		static void Main(string[] args)
		{
			EFSchoolContext context = new EFSchoolContext();
			List<Customer> customers = context.Customers.ToList();
			foreach (var item in customers)
			{
				Console.WriteLine(item.FirstName + ' ' + item.LastName);
			}
		}
	}
}
