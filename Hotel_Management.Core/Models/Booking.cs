using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class Booking
    {
        public int BookingId { get; set; }
        public int? CustomerId { get; set; }
        public int? RoomId { get; set; }
        public DateTime? CheckInDate { get; set; }
        public DateTime? CheckOutDate { get; set; }
        public int? NumberOfDays { get; set; }
        public int? UserId { get; set; }
        public int? ProductId { get; set; }
        public int? CompanyId { get; set; }
        public int? DepartmentId { get; set; }

        public virtual Company? Company { get; set; }
        public virtual Customer? Customer { get; set; }
        public virtual Department? Department { get; set; }
        public virtual Product? Product { get; set; }
        public virtual Room? Room { get; set; }
        public virtual User? User { get; set; }
    }
}
