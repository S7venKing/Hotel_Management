using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class RoomDevice
    {
        public int RoomId { get; set; }
        public int DeviceId { get; set; }
        public int? Quantity { get; set; }

        public virtual Device Device { get; set; } = null!;
        public virtual Room Room { get; set; } = null!;
    }
}
