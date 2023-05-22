﻿using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class Department
    {
        public Department()
        {
            Bookings = new HashSet<Booking>();
            Users = new HashSet<User>();
        }

        public string DepartmentId { get; set; } = null!;
        public string? DepartmentName { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Fax { get; set; }
        public string? Email { get; set; }
        public string? Address { get; set; }
        public string? CompanyId { get; set; }

        public virtual Company? Company { get; set; }
        public virtual ICollection<Booking> Bookings { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
