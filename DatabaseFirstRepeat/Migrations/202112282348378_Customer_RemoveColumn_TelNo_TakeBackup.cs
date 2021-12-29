namespace DatabaseFirstRepeat.Migrations
{
	using System;
	using System.Data.Entity.Migrations;

	public partial class Customer_RemoveColumn_TelNo_TakeBackup : DbMigration
	{
		public override void Up()
		{
			CreateTable(
				"dbo.CustomerBackUp",
				c => new
				{
					Id = c.Int(nullable: false, identity: false),
					FirstName = c.String(),
					LastName = c.String(),
					TelNo = c.String(),
				})
				.PrimaryKey(t => t.Id);

			Sql("insert into CustomerBackUp (Id, FirstName, LastName, TelNo)" +
				"select Id,  FirstName, LastName, TelNo from Customer");

			DropColumn("dbo.Customer", "TelNo");
		}

		public override void Down()
		{
			AddColumn("dbo.Customer", "TelNo", c => c.String());
		}
	}
}
