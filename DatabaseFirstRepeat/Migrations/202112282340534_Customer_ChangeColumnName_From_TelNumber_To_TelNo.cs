namespace DatabaseFirstRepeat.Migrations
{
	using System;
	using System.Data.Entity.Migrations;

	public partial class Customer_ChangeColumnName_From_TelNumber_To_TelNo : DbMigration
	{
		public override void Up()
		{
			AddColumn("dbo.Customer", "TelNo", c => c.String());
			Sql("update Customer set TelNo = TelNumber");
			DropColumn("dbo.Customer", "TelNumber");
		}

		public override void Down()
		{
			AddColumn("dbo.Customer", "TelNumber", c => c.String());
			DropColumn("dbo.Customer", "TelNo");
		}
	}
}
