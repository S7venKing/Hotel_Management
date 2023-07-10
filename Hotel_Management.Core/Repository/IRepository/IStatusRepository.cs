using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.IRepository
{
    public interface IStatusRepository : IGenericRepository<Status>
    {
        Status GetColorByStatus(int StatusId);
    }
}
