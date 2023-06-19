using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.Core.Repository.IRepository;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.ImplementRepo
{
    public class RoomTypeRepository : GenericRepository<RoomType>, IRoomTypeRepository
    {
        public RoomTypeRepository(HotelManagementContext context) : base(context)
        {
        }
    }
}
