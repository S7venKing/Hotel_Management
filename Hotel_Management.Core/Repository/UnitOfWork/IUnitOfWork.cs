using Hotel_Management.Core.Repository.IRepository;

namespace Hotel_Management.Core.Repository.UnitOfWork
{
    public interface IUnitOfWork
    {
        ICompanyRepository CompanyRepository { get; }

        int SaveChanges();
    }
}
