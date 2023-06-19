namespace Hotel_Management.UI.Areas.Admin.Models
{
    public class RoomViewModel
    {
        public int RoomId { get; set; }
        public string RoomName { get; set; }
        public bool Status { get; set; }
        public int FloorId { get; set; }
        public int RoomTypeId { get; set; }
    }
}
