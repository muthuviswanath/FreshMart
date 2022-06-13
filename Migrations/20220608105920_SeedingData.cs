using Microsoft.EntityFrameworkCore.Migrations;

namespace FreshMart.Migrations
{
    public partial class SeedingData : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Categories",
                columns: new[] { "CategoryId", "CategoryDescription", "CategoryName" },
                values: new object[,]
                {
                    { 1, "Computer and Electronics", "Electronics" },
                    { 2, "Home Appliances", "Home Appliances" },
                    { 3, "Stationaries", "Stationaries" },
                    { 4, "Groceries", "Groceries" },
                    { 5, "Men Grroming", "Grooming" }
                });

            migrationBuilder.InsertData(
                table: "Prodcts",
                columns: new[] { "ProductId", "CategoryId", "Description", "ImageThumbnailUrl", "ImageUrl", "IsInStock", "IsOnSale", "ProductName", "price" },
                values: new object[,]
                {
                    { 1, 1, "Logitech Wireless Mouse", "~/images/thumbnails/mouse1.png", "~/images/thumbnails/mouse1.png", true, true, "Mouse", 256.56m },
                    { 5, 1, "Gillete Shaving Cream", "~/images/thumbnails/mouse1.png", "~/images/thumbnails/mouse1.png", true, true, "Shaving Cream", 256.56m },
                    { 2, 2, "Double Door LG Refredgerator", "~/images/thumbnails/fridge1.png", "~/images/thumbnails/fridge1.png", true, true, "Refridgerator", 256.56m },
                    { 3, 3, "Parker Special Edition", "~/images/thumbnails/parker1.png", "~/images/thumbnails/parker1.png", true, true, "Parker Pen", 256.56m },
                    { 4, 4, "Gold Winner Sunflower Oil", "~/images/thumbnails/mouse1.png", "~/images/thumbnails/mouse1.png", true, true, "Sunflower Oil", 256.56m }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Categories",
                keyColumn: "CategoryId",
                keyValue: 5);

            migrationBuilder.DeleteData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 3);

            migrationBuilder.DeleteData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 4);

            migrationBuilder.DeleteData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 5);

            migrationBuilder.DeleteData(
                table: "Categories",
                keyColumn: "CategoryId",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Categories",
                keyColumn: "CategoryId",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Categories",
                keyColumn: "CategoryId",
                keyValue: 3);

            migrationBuilder.DeleteData(
                table: "Categories",
                keyColumn: "CategoryId",
                keyValue: 4);
        }
    }
}
