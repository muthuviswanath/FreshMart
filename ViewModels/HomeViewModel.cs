using System.Collections.Generic;
using FreshMart.Models;
namespace FreshMart.ViewModels
{
    public class HomeViewModel
    {
        public IEnumerable<Products> ProductOnSale { get; set; }
    }
}
