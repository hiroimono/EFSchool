namespace DatabaseFirstRepeat.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CustomerAddColumnTelNo : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Customer", "TelNo", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Customer", "TelNo");
        }
    }
}
