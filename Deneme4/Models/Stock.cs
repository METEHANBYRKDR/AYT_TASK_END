using System.ComponentModel.DataAnnotations;

namespace Deneme4.Models
{
    public class Stock
    {
        [Key]
        public int StockId { get; set; }
        public string StockName { get; set; }
        public int Unit { get; set; }
        public int Price { get; set; }

    }
}
