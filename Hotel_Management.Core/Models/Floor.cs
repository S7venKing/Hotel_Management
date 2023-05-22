using System;
using System.Collections.Generic;

namespace Hotel_Management.UI.Models
{
    public partial class Floor
    {
        public Floor()
        {
            Rooms = new HashSet<Room>();
        }

        public int FloorId { get; set; }
        public string? FloorName { get; set; }

        public virtual ICollection<Room> Rooms { get; set; }
    }
}
