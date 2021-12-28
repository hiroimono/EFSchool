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
			Context.EFSchoolContext dbEFSchoolContext = new Context.EFSchoolContext();
			var dataItemList = dbEFSchoolContext.Products.ToList();
			Console.ReadLine();
		}
	}
}
