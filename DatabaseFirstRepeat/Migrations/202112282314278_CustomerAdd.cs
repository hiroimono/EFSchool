namespace DatabaseFirstRepeat.Migrations
{
	using System;
	using System.Data.Entity.Migrations;

	public partial class CustomerAdd : DbMigration
	{
		public override void Up()
		{
			CreateTable(
				"dbo.Customer",
				c => new
				{
					Id = c.Int(nullable: false, identity: true),
					FirstName = c.String(),
					LastName = c.String(),
				})
				.PrimaryKey(t => t.Id);
			Sql("insert into Customer values ('Huseyin', 'Eltutan')");
		}

		public override void Down()
		{
			DropTable("dbo.Customer");
		}
	}
}
