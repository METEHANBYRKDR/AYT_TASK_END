using Deneme4.Models;
using Deneme4.Utility;
using Microsoft.AspNetCore.Mvc;

namespace Deneme4.Controllers
{
    public class StockController : Controller
    {
        private readonly ApplicationDbContext _context;

        public StockController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var stock = _context.Stocks.FirstOrDefault();

            return View(stock);
        }



        [HttpPost]
        public IActionResult DecreaseStock()
        {
            var stock = _context.Stocks.FirstOrDefault();

            if (stock != null && stock.Unit > 0)
            {
                stock.Unit--;
                _context.SaveChanges();
            }

            return RedirectToAction("Index","OrderDetail");
        }
        public IActionResult EndOrder()
        {
            return View();
        }
    }
}
