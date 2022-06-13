using Microsoft.AspNetCore.Mvc;
using FreshMart.Models;
using FreshMart.ViewModels;

namespace FreshMart.Controllers
{
    public class HomeController : Controller
    {
        private readonly IProductRepository _productRepository;

        public HomeController(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }
        public IActionResult Index()
        {
            var homeViewModel = new HomeViewModel
            {
                ProductOnSale = _productRepository.GetProductsOnSale
            };
            return View(homeViewModel);
        }
    }
}
