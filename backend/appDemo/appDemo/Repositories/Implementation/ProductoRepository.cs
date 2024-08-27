using appDemo.Data.Context;
using appDemo.Helpers;
using appDemo.Models.Entities;
using appDemo.Repositories.Abstract;

namespace appDemo.Repositories.Implementation
{

    public class ProductoRepository : IProductoRepository
    {
        private readonly dbDinetContext _dbDinetContext;

        public ProductoRepository(dbDinetContext dbDinetContext)
        {
            _dbDinetContext = dbDinetContext;
        }

        public List<Producto> ConsultarProducto()
        {
            List<Producto> productos= new List<Producto>();
            productos = _dbDinetContext.Productos.ToList();
            return productos;
        }

        public StatusResponse InsertarProducto(Producto produto)
        {
            StatusResponse statusResponse = new StatusResponse();
            produto.FechaCreacion = DateTime.Now;
             _dbDinetContext.Productos.Add(produto);
            _dbDinetContext.SaveChanges();
            return statusResponse;
        }
    }
}
