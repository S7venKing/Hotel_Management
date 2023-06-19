using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.Core.Repository.IRepository;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.ImplementRepo
{
    public class CustomerRepository : GenericRepository<Customer>, ICustomerRepository
    {
        public CustomerRepository(HotelManagementContext context) : base(context)
        {
        }
    }
}
