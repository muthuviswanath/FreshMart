using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace FreshMart.Models

{
    public class OrderDetail
    {
        public int OrderDetailId { get; set; }
        public int OrderId { get; set; }
        [ForeignKey("OrderId")]
        public Order Order { get; set; }
        public int ProductId { get; set;}
        [ForeignKey("ProductId")]
        public Products Products { get; set; }
        public int Amount { get; set; }
        public decimal Price { get; set; }

    }
}
