using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.IRepository
{
    public interface IRoomRepository : IGenericRepository<Room>
    {
        IEnumerable<Room> FindRoomByFloor(int FloorId);
        String GetColorByStatus(int StatusId);
        IEnumerable<Room> GetCustomerByRoom();
        Room GetPrice(int RoomId);
    }
}
