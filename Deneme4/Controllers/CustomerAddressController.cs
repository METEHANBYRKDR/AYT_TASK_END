using Deneme4.Models;
using Deneme4.Utility;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Deneme4.Controllers
{
    public class CustomerAddressController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CustomerAddressController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var customerAddresses = _context.CustomerAddresses.Include(ca => ca.Customer).ToList();

            return View(customerAddresses);
        }
        public IActionResult Ekle()
        {

            ViewBag.Customers = _context.Customers.Where(c => c.IsActive).ToList();

            return View();
        }

        [HttpPost]
        public IActionResult Ekle(CustomerAddress model)
        {



                var customer = _context.Customers.FirstOrDefault(c => c.CustomerId == model.CustomerId);

                    // Yeni adresi oluştur ve veritabanına ekle
                    var newAddress = new CustomerAddress
                    {
                        CustomerId = model.CustomerId,
                        AddressType = model.AddressType,
                        City = model.City,
                        IsActive = model.IsActive
                    };

                    _context.CustomerAddresses.Add(newAddress);
                    _context.SaveChanges();

                    return RedirectToAction("CreateOrder","Order");
                
                    ModelState.AddModelError("", "Geçersiz müşteri seçimi.");
                
            

            ViewBag.Customers = _context.Customers.Where(c => c.IsActive).ToList();
            return View(model);
        }
    }
}
