using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstWithExistingDb
{
	internal static class Program
	{
		static void Main(string[] args)
		{
			EFSchoolDbContext dbContext = new EFSchoolDbContext();
			dbContext.Employee.ToList().ForEach(e => Console.WriteLine($"{e.FirstName} {e.LastName}"));
			Console.ReadLine();
		}
	}
}
