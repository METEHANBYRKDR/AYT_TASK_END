using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Deneme4.Models
{
    public class CustomerAddress
    {
        [Key]
        public int AddressId { get; set; }

        [ForeignKey("CustomerId")]
        public int CustomerId { get; set; }
        public Customer Customer { get; set; }


        public string? AddressType { get; set; }
        public string? City { get; set; }
        public bool IsActive { get; set; }


    }
}
