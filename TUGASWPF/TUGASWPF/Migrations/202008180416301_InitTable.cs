namespace TUGASWPF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.tb_m_item",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        Price = c.Int(nullable: false),
                        Stock = c.Int(nullable: false),
                        Supplier_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.tb_m_supplier", t => t.Supplier_Id)
                .Index(t => t.Supplier_Id);
            
            CreateTable(
                "dbo.tb_m_supplier",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                        JoinDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.tb_m_transaction",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        OrderDate = c.DateTime(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.tb_m_transactionitem",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Quantity = c.Int(nullable: false),
                        Item_Id = c.Int(),
                        Transaction_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.tb_m_item", t => t.Item_Id)
                .ForeignKey("dbo.tb_m_transaction", t => t.Transaction_Id)
                .Index(t => t.Item_Id)
                .Index(t => t.Transaction_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.tb_m_transactionitem", "Transaction_Id", "dbo.tb_m_transaction");
            DropForeignKey("dbo.tb_m_transactionitem", "Item_Id", "dbo.tb_m_item");
            DropForeignKey("dbo.tb_m_item", "Supplier_Id", "dbo.tb_m_supplier");
            DropIndex("dbo.tb_m_transactionitem", new[] { "Transaction_Id" });
            DropIndex("dbo.tb_m_transactionitem", new[] { "Item_Id" });
            DropIndex("dbo.tb_m_item", new[] { "Supplier_Id" });
            DropTable("dbo.tb_m_transactionitem");
            DropTable("dbo.tb_m_transaction");
            DropTable("dbo.tb_m_supplier");
            DropTable("dbo.tb_m_item");
        }
    }
}
