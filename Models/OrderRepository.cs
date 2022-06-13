using System;
namespace FreshMart.Models
{
    public class OrderRepository:IOrderRepository
    {
        private readonly AppDbContext _appDbcontext;
        private readonly ShoppingCart _shoppingCart;

        public OrderRepository(AppDbContext appDbcontext, ShoppingCart shoppingCart)
        {
            _appDbcontext = appDbcontext;
            _shoppingCart = shoppingCart;
        }

        public void CreateOrder(Order order) {
            order.OrderPlaced = DateTime.Now;
            order.OrderTotal = _shoppingCart.GetShoppingCartTotal();
            _appDbcontext.Orders.Add(order);
            _appDbcontext.SaveChanges();

            var shoppingCartItems = _shoppingCart.GetShoppingCartItems();

            foreach (var shoppinCartItem in shoppingCartItems) {
                var orderDetail = new OrderDetail
                {
                    Amount = shoppinCartItem.Amount,
                    Price = shoppinCartItem.Products.price,
                    ProductId = shoppinCartItem.Products.ProductId,
                    OrderId = order.OrderId
                };

                _appDbcontext.OrderDetails.Add(orderDetail);
            }
            _appDbcontext.SaveChanges();
        }
    }
}
