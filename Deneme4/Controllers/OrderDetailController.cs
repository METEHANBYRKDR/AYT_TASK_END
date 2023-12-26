using Deneme4.Utility;
using Microsoft.AspNetCore.Mvc;

namespace Deneme4.Controllers
{
    public class OrderDetailController : Controller
    {


        private readonly ApplicationDbContext _context;

        public OrderDetailController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var orderData = _context.Orders.ToList();
            var stockData = _context.Stocks.ToList();

            ViewBag.OrderData = orderData;
            ViewBag.StockData = stockData;

            return View();
        }
    }
}

