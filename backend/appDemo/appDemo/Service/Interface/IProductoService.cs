using appDemo.Helpers;
using appDemo.Models.Entities;

namespace appDemo.Service.Interface
{
    public interface IProductoService
    {
        List<Producto> ConsultarProducto();
        StatusResponse InsertarProducto(Producto produto);
    }
}
