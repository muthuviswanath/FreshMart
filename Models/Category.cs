using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace FreshMart.Models
{
    public class Category
    {
        [Key]
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string CategoryDescription { get; set; }
        public List<Products> ProductList {get; set;}
    }
}
