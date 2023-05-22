using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class Company
    {
        public Company()
        {
            Bookings = new HashSet<Booking>();
            Departments = new HashSet<Department>();
            Users = new HashSet<User>();
        }

        public string CompanyId { get; set; } = null!;
        public string? CompanyName { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Fax { get; set; }
        public string? Email { get; set; }
        public string? Address { get; set; }

        public virtual ICollection<Booking> Bookings { get; set; }
        public virtual ICollection<Department> Departments { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
