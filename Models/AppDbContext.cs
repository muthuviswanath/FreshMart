using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace FreshMart.Models
{
    public class AppDbContext:IdentityDbContext<IdentityUser>
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Products> Prodcts { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<ShoppingCartItem> ShoppingCartItems { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder) { 
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Category>().HasData(new Category
            {
                CategoryId = 1,
                CategoryName = "Electronics",
                CategoryDescription = "Computer and Electronics"
            });
            modelBuilder.Entity<Category>().HasData(new Category
            {
                CategoryId = 2,
                CategoryName = "Home Appliances",
                CategoryDescription = "Home Appliances"
            });
            modelBuilder.Entity<Category>().HasData(new Category
            {
                CategoryId = 3,
                CategoryName = "Stationaries",
                CategoryDescription = "Stationaries"
            });
            modelBuilder.Entity<Category>().HasData(new Category
            {
                CategoryId = 4,
                CategoryName = "Groceries",
                CategoryDescription = "Groceries"
            });
            modelBuilder.Entity<Category>().HasData(new Category
            {
                CategoryId = 5,
                CategoryName = "Grooming",
                CategoryDescription = "Men Grroming"
            });



            modelBuilder.Entity<Products>().HasData(new Products
            {
                ProductId = 1,
                ProductName = "Mouse",
                price = 256.56M,
                Description = "Logitech Wireless Mouse",
                CategoryId = 1,
                ImageThumbnailUrl="~/images/thumbnails/mouse1.png",
                ImageUrl = "~/images/thumbnails/mouse1.png",
                IsInStock = true,
                IsOnSale = true
            });

            modelBuilder.Entity<Products>().HasData(new Products
            {
                ProductId = 2,
                ProductName = "Refridgerator",
                price = 256.56M,
                Description = "Double Door LG Refredgerator",
                CategoryId = 2,
                ImageThumbnailUrl = "~/images/thumbnails/fridge1.png",
                ImageUrl = "~/images/thumbnails/fridge1.png",
                IsInStock = true,
                IsOnSale = true
            });

            modelBuilder.Entity<Products>().HasData(new Products
            {
                ProductId = 3,
                ProductName = "Parker Pen",
                price = 256.56M,
                Description = "Parker Special Edition",
                CategoryId = 3,
                ImageThumbnailUrl = "~/images/thumbnails/parker1.png",
                ImageUrl = "~/images/thumbnails/parker1.png",
                IsInStock = true,
                IsOnSale = true
            });

            modelBuilder.Entity<Products>().HasData(new Products
            {
                ProductId = 4,
                ProductName = "Sunflower Oil",
                price = 256.56M,
                Description = "Gold Winner Sunflower Oil",
                CategoryId = 4,
                ImageThumbnailUrl = "~/images/thumbnails/mouse1.png",
                ImageUrl = "~/images/thumbnails/mouse1.png",
                IsInStock = true,
                IsOnSale = true
            });

            modelBuilder.Entity<Products>().HasData(new Products
            {
                ProductId = 5,
                ProductName = "Shaving Cream",
                price = 256.56M,
                Description = "Gillete Shaving Cream",
                CategoryId = 1,
                ImageThumbnailUrl = "/images/thumbnails/mouse1.png",
                ImageUrl = "/images/thumbnails/mouse1.png",
                IsInStock = true,
                IsOnSale = true
            });



        }
    }
}
