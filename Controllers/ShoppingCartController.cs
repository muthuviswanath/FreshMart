using Microsoft.AspNetCore.Mvc;
using FreshMart.Models;
using FreshMart.ViewModels;
using System.Linq;

namespace FreshMart.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly IProductRepository _productRepository;
        private readonly ShoppingCart _shoppingCart;

        public ShoppingCartController(IProductRepository productRepository, ShoppingCart shoppingCart)
        {
            _productRepository = productRepository;
            _shoppingCart = shoppingCart;
        }

        public ViewResult Index()
        {
            _shoppingCart.ShoppingCartItems = _shoppingCart.GetShoppingCartItems();

            var shoppingCartViewModel = new ShoppingCartViewModel
            {
                ShoppingCart = _shoppingCart,
                ShoppingCartTotal = _shoppingCart.GetShoppingCartTotal()
            };
            return View(shoppingCartViewModel);
        }

        public RedirectToActionResult AddToShoppingCart(int productId) {

            var selectedProduct = _productRepository.GetAllProducts.FirstOrDefault(
                c => c.ProductId == productId);
            if (selectedProduct != null) {
                _shoppingCart.AddToCart(selectedProduct, 1);
            }
            return RedirectToAction("Index");
        }

        public RedirectToActionResult RemoveFromShoppingCart(int productId)
        {

            var selectedProduct = _productRepository.GetAllProducts.FirstOrDefault(
                c => c.ProductId == productId);
            if (selectedProduct != null)
            {
                _shoppingCart.RemoveFromCart(selectedProduct);
            }
            return RedirectToAction("Index");
        }

        public RedirectToActionResult ClearCart() {
            _shoppingCart.ClearCart();
            return RedirectToAction("Index");
        }
    }
}
