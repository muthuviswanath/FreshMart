using System.Collections.Generic;
namespace FreshMart.Models
{
    public interface IProductRepository
    {
        IEnumerable<Products> GetAllProducts { get; }
        IEnumerable<Products> GetProductsOnSale { get; }

        Products GetProductById(int productId);
    }
}
