namespace Hotel_Management.UI.Models
{
    public partial class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; } = null!;
        public double Price { get; set; }
        public int? BookingId { get; set; }
        public string Image { get; set; } = null!;


        public virtual Booking? Booking { get; set; }
    }
}
