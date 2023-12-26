using Microsoft.EntityFrameworkCore.Storage;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Deneme4.Models
{
    public class OrderDetail
    {
        [Key]
        public int OrderDetailId { get; set; }

        [ForeignKey("OrderId")]
        public int OrderId { get; set; }
        public int Amount { get; set; }

        [ForeignKey("StockId")]
        public int StockId { get; set; }
        public bool IsActive { get; set; }

        public Stock Stock { get; set; }
        public Order Order { get; set; }
    }
}
