namespace DatabaseFirstRepeat.Migrations
{
	using System;
	using System.Data.Entity.Migrations;

	public partial class OrderAdd : DbMigration
	{
		public override void Up()
		{
			CreateTable(
				"dbo.Order",
				c => new
				{
					Id = c.Int(nullable: false, identity: true),
					Amount = c.Decimal(nullable: false, precision: 18, scale: 2),
					Customer_Id = c.Int(),
					Product_Id = c.Int(),
				})
				.PrimaryKey(t => t.Id)
				.ForeignKey("dbo.Customer", t => t.Customer_Id)
				.ForeignKey("dbo.Product", t => t.Product_Id)
				.Index(t => t.Customer_Id)
				.Index(t => t.Product_Id);

		}

		public override void Down()
		{
			DropForeignKey("dbo.Order", "Product_Id", "dbo.Product");
			DropForeignKey("dbo.Order", "Customer_Id", "dbo.Customer");
			DropIndex("dbo.Order", new[] { "Product_Id" });
			DropIndex("dbo.Order", new[] { "Customer_Id" });
			DropTable("dbo.Order");
		}
	}
}
