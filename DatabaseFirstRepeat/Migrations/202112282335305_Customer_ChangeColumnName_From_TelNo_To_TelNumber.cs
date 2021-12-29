namespace DatabaseFirstRepeat.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Customer_ChangeColumnName_From_TelNo_To_TelNumber : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Customer", "TelNumber", c => c.String());
            DropColumn("dbo.Customer", "TelNo");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Customer", "TelNo", c => c.String());
            DropColumn("dbo.Customer", "TelNumber");
        }
    }
}
