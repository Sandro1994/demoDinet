using appDemo.Helpers;
using appDemo.Models.Entities;

namespace appDemo.Repositories.Abstract
{
    public interface IProductoRepository
    {
        List<Producto> ConsultarProducto();
        StatusResponse InsertarProducto(Producto produto);

    }
}
