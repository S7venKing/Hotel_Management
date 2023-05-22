using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class Device
    {
        public Device()
        {
            RoomDevices = new HashSet<RoomDevice>();
        }

        public int DeviceId { get; set; }
        public string? DeviceName { get; set; }
        public double? Price { get; set; }

        public virtual ICollection<RoomDevice> RoomDevices { get; set; }
    }
}
