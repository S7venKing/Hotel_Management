using Hotel_Management.Core.Repository.ImplementRepo;
using Hotel_Management.Core.Repository.IRepository;
using Hotel_Management.UI.Models;

namespace Hotel_Management.Core.Repository.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly HotelManagementContext? _context;
        private ICompanyRepository _companyRepository;

        public UnitOfWork(HotelManagementContext context = null)
        {
            _context = context ?? new HotelManagementContext();
        }

        public ICompanyRepository CompanyRepository => _companyRepository ?? new CompanyRepository(_context);

        public void Dispose()
        {
            _context.Dispose();
            GC.SuppressFinalize(this);
        }
        protected virtual void Dispose(bool disposing)
        {
            if (!disposing)
            {
                return;
            }
            this._context?.Dispose();
        }
        public int SaveChanges()
        {
            return _context.SaveChanges();

        }
    }
}
