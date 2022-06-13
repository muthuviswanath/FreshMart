using Microsoft.AspNetCore.Mvc;
using FreshMart.Models;
using FreshMart.ViewModels;
using System.Collections.Generic;
using System.Collections;
using System.Linq;

namespace FreshMart.Controllers
{
    public class ProductsController : Controller
    {
        private readonly IProductRepository _productRepository;
        private readonly ICategoryRepository _categoryRepository;

        public ProductsController(IProductRepository productRepository, ICategoryRepository categoryRepository)
        {
            _productRepository = productRepository;
            _categoryRepository = categoryRepository;
        }



        public ViewResult List(string category) {
            IEnumerable<Products> products;
            string currentCategory;

            if (string.IsNullOrEmpty(category)) {
                products = _productRepository.GetAllProducts.OrderBy(p => p.ProductId);
                currentCategory = "All Products";
            }

            else
            {
                products = _productRepository.GetAllProducts.Where(p => p.Category.CategoryName == category);
                currentCategory = _categoryRepository.GetAllCategories.FirstOrDefault(c =>
                c.CategoryName == category)?.CategoryName;
            }
            return View(new ProductListViewModel
            {
                productslst = products,
                CurrentCategory = currentCategory
            });
        }

        public IActionResult Details(int id) {
            var prods = _productRepository.GetProductById(id);
            if (prods == null) {
                return NotFound();    
            }
            return View(prods);
        }
    }
}
