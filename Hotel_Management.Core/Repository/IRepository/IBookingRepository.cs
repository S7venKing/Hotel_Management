using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.IRepository
{
    public interface IBookingRepository : IGenericRepository<Booking>
    {
        Booking GetBookingByRoom(int RoomId);
        Booking GetBooking(int BookingId);
    }
}

