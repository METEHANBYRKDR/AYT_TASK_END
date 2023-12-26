using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Deneme4.Models
{
    public class Order
    {
        [Key]
        public int OrderId { get; set; }

        [ForeignKey("CustomerId")]
        public int CustomerId { get; set; }
        public DateTime OrderDate { get; set; }
        public string OrderNo { get; set; }
        public decimal TotalPrice { get; set; }
        public decimal Tax { get; set; }
        public bool IsActive { get; set; }

        public string InvoiceAddress { get; set; }
        public string DeliveryAddress { get; set; }

        public List<OrderDetail> OrderDetails { get; set; }
        public Customer Customer { get; set; }


    }
}
