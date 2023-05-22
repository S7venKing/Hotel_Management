using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class Product
    {
        public Product()
        {
            Bookings = new HashSet<Booking>();
        }

        public int ProductId { get; set; }
        public string? ProductName { get; set; }
        public double? Price { get; set; }

        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
