using Deneme4.Models;
using Deneme4.Utility;
using Microsoft.AspNetCore.Mvc;

namespace Deneme4.Controllers
{
    public class CustomerController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CustomerController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var customers = _context.Customers.ToList();

            return View(customers);
        }

        public IActionResult Ekle()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Ekle(Customer model)
        {
            if (ModelState.IsValid)
            {
                _context.Customers.Add(model);
                _context.SaveChanges();

                return RedirectToAction("Index","CustomerAddress");
            }

            return View(model);
        }


    }
}
