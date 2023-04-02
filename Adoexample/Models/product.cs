using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Adoexample.Models
{
    public class product
    {
        [Key]
        public int productId { get; set; }

        [Required]
        [DisplayName("Product Name")]
        public string productName { get; set; }

        [Required]
        public decimal price { get; set; }

        [Required]
        public int qty { get; set; }
        public string remarks { get; set; }
    }
}