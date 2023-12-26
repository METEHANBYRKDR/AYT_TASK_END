using Deneme4.Models;
using Deneme4.Utility;
using Microsoft.AspNetCore.Mvc;

namespace Deneme4.Controllers
{
    public class OrderController : Controller
    {
        private readonly ApplicationDbContext _context;

        public OrderController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult CreateOrder()
        {
            ViewBag.Customers = _context.Customers.ToList();
            ViewBag.OrderNumbers = _context.Orders.Select(o => o.OrderNo).Distinct().ToList();

            return View();
        }

        [HttpPost]
        public IActionResult CreateOrder(Order model)
        {
           
                var selectedOrder = _context.Orders.FirstOrDefault(o => o.OrderNo == model.OrderNo);

                if (selectedOrder != null)
                {
                    
                    model.TotalPrice = selectedOrder.TotalPrice;
                }
                else
                {
                    
                    if (model.TotalPrice != 122 && model.TotalPrice != 170)
                    {
                        ModelState.AddModelError(nameof(Order.TotalPrice), "Üründen stockta kalmadı.");
                        ViewBag.Customers = _context.Customers.ToList();
                        return View(model);
                    }
                }

               
                model.OrderDate = DateTime.Now;
                model.IsActive = true;
                model.Tax = 20;
                model.OrderNo = GenerateOrderNumber();

                // Invoice Address ve Delivery Address kaydetme işlemi
                model.InvoiceAddress = model.InvoiceAddress;  
                model.DeliveryAddress = model.DeliveryAddress;  

                _context.Orders.Add(model);
                _context.SaveChanges();

                return RedirectToAction("Index", "Stock");
           

        }
        private string GenerateOrderNumber()
        {
            return DateTime.Now.ToString("yyyyMMddHHmmss");
        }
    }
}
