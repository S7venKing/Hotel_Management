using Hotel_Management.Core.Repository.UnitOfWork;
using Microsoft.AspNetCore.Mvc;

namespace Hotel_Management.UI.Controllers
{
    public class Company : Controller
    {
        private IUnitOfWork _unitOfWork;

        public Company(IUnitOfWork _unitOfWork)
        {
            this._unitOfWork = _unitOfWork;
        }
        public IActionResult Index()
        {
            var data = _unitOfWork.CompanyRepository.GetAll();
            return View(data);
        }
    }
}
