using Microsoft.EntityFrameworkCore.Migrations;

namespace FreshMart.Migrations
{
    public partial class SeedingDataImages : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 5,
                columns: new[] { "ImageThumbnailUrl", "ImageUrl" },
                values: new object[] { "/images/thumbnails/mouse1.png", "/images/thumbnails/mouse1.png" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Prodcts",
                keyColumn: "ProductId",
                keyValue: 5,
                columns: new[] { "ImageThumbnailUrl", "ImageUrl" },
                values: new object[] { "~/images/thumbnails/mouse1.png", "~/images/thumbnails/mouse1.png" });
        }
    }
}
