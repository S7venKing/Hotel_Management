using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class User
    {
        public User()
        {
            Bookings = new HashSet<Booking>();
        }

        public int UserId { get; set; }
        public string? FullName { get; set; }
        public string? UserName { get; set; }
        public string? Password { get; set; }
        public int? CompanyId { get; set; }
        public int? DepartmentId { get; set; }
        public bool? IsGroup { get; set; }
        public bool? Disable { get; set; }

        public virtual Company? Company { get; set; }
        public virtual Department? Department { get; set; }
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
