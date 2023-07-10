using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.Core.Repository.IRepository;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.ImplementRepo
{
    public class RoomRepository : GenericRepository<Room>, IRoomRepository
    {
        public RoomRepository(HotelManagementContext context) : base(context)
        {
        }

        public IEnumerable<Room> FindRoomByFloor(int FloorId)
        {
            return context.Rooms.Where(i => i.FloorId == FloorId).ToList();
        }

        public string GetColorByStatus(int StatusId)
        {
            return context.Statuses.Where(i => i.StatusId == StatusId).ToString();
        }
    }
}
