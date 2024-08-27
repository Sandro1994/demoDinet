using System.ComponentModel.DataAnnotations;

namespace appDemo.Models.Entities
{
    public class Producto
    {
        [Key]
        public long? Id { get; set; }
        public string? Nombre { get; set; }
        public decimal? Precio { get; set; }
        public DateTime? FechaCreacion { get; set; }
    }
}
