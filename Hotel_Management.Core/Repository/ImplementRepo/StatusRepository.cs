using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.Core.Repository.IRepository;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.ImplementRepo
{
    public class StatusRepository : GenericRepository<Status>, IStatusRepository
    {
        public StatusRepository(HotelManagementContext context) : base(context)
        {
        }

        public Status GetColorByStatus(int StatusId)
        {
            return (Status)context.Statuses.Where(i => i.StatusId == StatusId);
        }
    }
}
