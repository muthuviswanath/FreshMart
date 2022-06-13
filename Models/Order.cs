using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace FreshMart.Models
{
    public class Order
    {
        [BindNever]
        [Key]
        public int OrderId { get; set; }
        [Required(ErrorMessage ="Enter your First Name")]
        [StringLength(25)]
        public string FirstName {get; set; }
        [Required(ErrorMessage = "Enter your Last Name")]
        [StringLength(25)]
        public string LastName {get; set; }
        [Required(ErrorMessage = "Enter your Address")]
        public string Address { get; set; }
        [Required(ErrorMessage = "Enter your City")]
        public string City { get; set; }
        [Required(ErrorMessage = "Enter your State Name")]
        public string State { get; set; }
        [Required(ErrorMessage = "Enter your PinCode for delivery")]
        public string PinCode { get; set; }
        [Required(ErrorMessage = "Enter your Phone Number for us to contact")]
        [DataType(DataType.PhoneNumber)]
        public string PhoneNumber { get; set; }

   
        public List<OrderDetail> OrderDetails { get; set; }
        [BindNever]
        public DateTime OrderPlaced { get; set; }
        [BindNever]
        public decimal OrderTotal { get; set; }
    }
}
