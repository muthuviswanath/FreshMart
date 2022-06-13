using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace FreshMart.Models
{
    public class ProductRepository: IProductRepository
    {

        private readonly AppDbContext _appDbContext;

        public ProductRepository(AppDbContext appDbContext)
        {
            _appDbContext = appDbContext;

        }
        public IEnumerable<Products> GetAllProducts
        {
            get
            {
                return _appDbContext.Prodcts.Include(c => c.Category);
            }
        }
           

        public IEnumerable<Products> GetProductsOnSale
        {
            get {
                return _appDbContext.Prodcts.Include(c => c.Category).Where(p => p.IsOnSale);
            }
        }

        public Products GetProductById(int ProductId) {
            return _appDbContext.Prodcts.FirstOrDefault(p => p.ProductId == ProductId);
        }
    }
}
