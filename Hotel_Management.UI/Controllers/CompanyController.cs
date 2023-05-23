using Hotel_Management.Core.Repository.UnitOfWork;
using Hotel_Management.UI.Models;
using Microsoft.AspNetCore.Mvc;

namespace Hotel_Management.UI.Controllers
{
    public class CompanyController : Controller
    {
        private IUnitOfWork _unitOfWork;

        public CompanyController(IUnitOfWork _unitOfWork)
        {
            this._unitOfWork = _unitOfWork;
        }
        public IActionResult Index()
        {
            var data = _unitOfWork.CompanyRepository.GetAll();
            return View(data);
        }

        public IActionResult Detail(int? id)
        {
            if (id.HasValue)
            {
                var data = _unitOfWork.CompanyRepository.Find(id.Value);
                return View(data);
            }
            return RedirectToAction("Index");
        }

        public ActionResult Edit(int? id)
        {
            if (id.HasValue)
            {
                var company = _unitOfWork.CompanyRepository.Find(id.Value);
                if (company != null)
                {
                    return View(company);
                }
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int? CompanyId, CompanyViewModel company)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    if (CompanyId.HasValue)
                    {
                        _unitOfWork.CompanyRepository.Update(new Company()
                        {
                            CompanyId = company.CompanyId,
                            CompanyName = company.CompanyName,
                            PhoneNumber = company.PhoneNumber,
                            Fax = company.Fax,
                            Email = company.Email,
                            Address = company.Address,
                        });
                        _unitOfWork.SaveChanges();
                    }
                }
                catch (InvalidOperationException ex)
                {
                    ModelState.AddModelError(string.Empty, ex.Message);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(company);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(CompanyViewModel company)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    _unitOfWork.CompanyRepository.Add(new Company()
                    {
                        CompanyName = company.CompanyName,
                        PhoneNumber = company.PhoneNumber,
                        Fax = company.Fax,
                        Email = company.Email,
                        Address = company.Address,
                    });
                    _unitOfWork.SaveChanges();
                    return RedirectToAction(nameof(Index));
                }
            }
            catch
            {
                return View();
            }
            return View(company);
        }

        public IActionResult Delete(int? id)
        {
            if (id.HasValue)
            {
                _unitOfWork.CompanyRepository.Delete(id.Value);
                _unitOfWork.SaveChanges();
            }
            return RedirectToAction(nameof(Index));
        }

    }
}
