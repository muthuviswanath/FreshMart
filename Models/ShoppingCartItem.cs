using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace FreshMart.Models
{
    public class ShoppingCartItem
    {
        [Key]
        public int ShoppingCartItemId { get; set; }
        public string ShoppingCartId { get; set; }
        public Products Products { get; set; }
        public int Amount { get; set; }

    }
}
