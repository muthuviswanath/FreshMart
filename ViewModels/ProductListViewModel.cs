using FreshMart.Models;
using System.Collections.Generic;
namespace FreshMart.ViewModels
{
    public class ProductListViewModel
    {
        public IEnumerable<Products> productslst { get; set; }
        public string CurrentCategory { get; set; }

    }
}
