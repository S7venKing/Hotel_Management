using Hotel_Management.Core.Repository.GenericRepo;
using Hotel_Management.Core.Repository.IRepository;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.ImplementRepo
{
    public class DepartmentRepository : GenericRepository<Department>, IDepartmentRepository
    {
        public DepartmentRepository(HotelManagementContext context) : base(context)
        {
        }

        public IEnumerable<Department> SearchDepartmentByName(string name)
        {
            return context.Departments
          .Where(d => d.DepartmentName.Contains(name))
          .ToList();
        }
    }
}
