namespace Shop.DataLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DataMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Good",
                c => new
                    {
                        GoodId = c.Int(nullable: false, identity: true),
                        GoodName = c.String(nullable: false, maxLength: 100, unicode: false),
                        ManufacturerId = c.Int(),
                        PriceUsd = c.Decimal(nullable: false, storeType: "money"),
                        Rest = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.GoodId)
                .ForeignKey("dbo.Manufacturer", t => t.ManufacturerId)
                .Index(t => t.ManufacturerId);
            
            CreateTable(
                "dbo.Manufacturer",
                c => new
                    {
                        ManufacturerId = c.Int(nullable: false, identity: true),
                        ManufacturerName = c.String(nullable: false, maxLength: 100, unicode: false),
                    })
                .PrimaryKey(t => t.ManufacturerId);
            
            CreateTable(
                "dbo.Photo",
                c => new
                    {
                        PhotoId = c.Int(nullable: false, identity: true),
                        GoodId = c.Int(nullable: false),
                        PathPhoto = c.String(nullable: false, maxLength: 200),
                        IsMain = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.PhotoId)
                .ForeignKey("dbo.Good", t => t.GoodId, cascadeDelete: true)
                .Index(t => t.GoodId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Photo", "GoodId", "dbo.Good");
            DropForeignKey("dbo.Good", "ManufacturerId", "dbo.Manufacturer");
            DropIndex("dbo.Photo", new[] { "GoodId" });
            DropIndex("dbo.Good", new[] { "ManufacturerId" });
            DropTable("dbo.Photo");
            DropTable("dbo.Manufacturer");
            DropTable("dbo.Good");
        }
    }
}
