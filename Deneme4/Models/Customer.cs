using System.ComponentModel.DataAnnotations;

namespace Deneme4.Models
{
    public class Customer
    {
        [Key]
        public int CustomerId { get; set; }
        public string? CustomerName { get; set; }
        public bool IsActive { get; set; }
        
    }
}
