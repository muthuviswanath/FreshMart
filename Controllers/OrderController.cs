using Microsoft.AspNetCore.Mvc;
using FreshMart.Models;
using Microsoft.AspNetCore.Authorization;

namespace FreshMart.Controllers
{
    [Authorize]
    public class OrderController : Controller
    {
        private readonly IOrderRepository _orderRepository;
        private readonly ShoppingCart _shoppingCart;

        public OrderController(IOrderRepository orderRepository, ShoppingCart shoppingCart)
        {
            _orderRepository = orderRepository;
            _shoppingCart = shoppingCart;
        }

        public IActionResult Checkout()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Checkout(Order order) { 
            _shoppingCart.ShoppingCartItems = _shoppingCart.GetShoppingCartItems();
            if (_shoppingCart.ShoppingCartItems.Count == 0) {
                ModelState.AddModelError("", "Your cart is empty");
            }
            if (ModelState.IsValid) {
                _orderRepository.CreateOrder(order);
                _shoppingCart.ClearCart();
                return RedirectToAction("CheckoutComplete");
            }
            return View(order);
        }

        public IActionResult CheckoutComplete() {
            ViewBag.CheckoutCompleteMessage = "Order placed, thank you! Confirmation will be sent to your email.";
            return View();
        }
    }
}
