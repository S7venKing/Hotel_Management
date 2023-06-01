using Hotel_Management.Core.Repository.UnitOfWork;
using Hotel_Management.UI.Areas.Admin.Models;
using Hotel_Management.UI.Models;
using Microsoft.AspNetCore.Mvc;

namespace Hotel_Management.UI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class DepartmentController : Controller
    {
        private IUnitOfWork _unitOfWork;


        public DepartmentController(IUnitOfWork _unitOfWork)
        {
            this._unitOfWork = _unitOfWork;
        }

        // GET: Admin/Department
        public IActionResult Index()
        {
            //var hotelManagementContext = _context.Departments.Include(d => d.Company);
            //return View(await hotelManagementContext.ToListAsync());
            var data = _unitOfWork.DepartmentRepository.GetAll();
            return View(data);
        }

        // GET: Admin/Department/Details/5
        public IActionResult Details(int? id)
        {
            if (id.HasValue)
            {
                var data = _unitOfWork.DepartmentRepository.Find(id.Value);
                return View(data);
            }
            return RedirectToAction("Index");
        }

        // GET: Admin/Department/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Department/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(DepartmentModelView department)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    _unitOfWork.DepartmentRepository.Add(new Department()
                    {
                        DepartmentName = department.DepartmentName,
                        PhoneNumber = department.PhoneNumber,
                        Fax = department.Fax,
                        Email = department.Email,
                        Address = department.Address,
                        CompanyId = department.CompanyId,
                    });
                    _unitOfWork.SaveChanges();
                    return RedirectToAction(nameof(Index));
                }
            }
            catch
            {
                return View();
            }
            return View(department);
        }

        //// GET: Admin/Department/Edit/5
        //public async Task<IActionResult> Edit(int? id)
        //{
        //    if (id == null || _context.Departments == null)
        //    {
        //        return NotFound();
        //    }

        //    var department = await _context.Departments.FindAsync(id);
        //    if (department == null)
        //    {
        //        return NotFound();
        //    }
        //    ViewData["CompanyId"] = new SelectList(_context.Companies, "CompanyId", "CompanyId", department.CompanyId);
        //    return View(department);
        //}

        //// POST: Admin/Department/Edit/5
        //// To protect from overposting attacks, enable the specific properties you want to bind to.
        //// For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> Edit(int id, [Bind("DepartmentId,DepartmentName,PhoneNumber,Fax,Email,Address,CompanyId")] Department department)
        //{
        //    if (id != department.DepartmentId)
        //    {
        //        return NotFound();
        //    }

        //    if (ModelState.IsValid)
        //    {
        //        try
        //        {
        //            _context.Update(department);
        //            await _context.SaveChangesAsync();
        //        }
        //        catch (DbUpdateConcurrencyException)
        //        {
        //            if (!DepartmentExists(department.DepartmentId))
        //            {
        //                return NotFound();
        //            }
        //            else
        //            {
        //                throw;
        //            }
        //        }
        //        return RedirectToAction(nameof(Index));
        //    }
        //    ViewData["CompanyId"] = new SelectList(_context.Companies, "CompanyId", "CompanyId", department.CompanyId);
        //    return View(department);
        //}

        //// GET: Admin/Department/Delete/5
        //public async Task<IActionResult> Delete(int? id)
        //{
        //    if (id == null || _context.Departments == null)
        //    {
        //        return NotFound();
        //    }

        //    var department = await _context.Departments
        //        .Include(d => d.Company)
        //        .FirstOrDefaultAsync(m => m.DepartmentId == id);
        //    if (department == null)
        //    {
        //        return NotFound();
        //    }

        //    return View(department);
        //}

        //// POST: Admin/Department/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public async Task<IActionResult> DeleteConfirmed(int id)
        //{
        //    if (_context.Departments == null)
        //    {
        //        return Problem("Entity set 'HotelManagementContext.Departments'  is null.");
        //    }
        //    var department = await _context.Departments.FindAsync(id);
        //    if (department != null)
        //    {
        //        _context.Departments.Remove(department);
        //    }

        //    await _context.SaveChangesAsync();
        //    return RedirectToAction(nameof(Index));
        //}

        //private bool DepartmentExists(int id)
        //{
        //    return (_context.Departments?.Any(e => e.DepartmentId == id)).GetValueOrDefault();
        //}
    }
}
