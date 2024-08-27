using appDemo.Helpers;
using appDemo.Models.Entities;
using appDemo.Repositories.Abstract;
using appDemo.Service.Interface;
using Serilog;

namespace appDemo.Service.Implementation
{
    public class ProductoService : IProductoService
    {
        private readonly IProductoRepository _productoRepository;
        public ProductoService(IProductoRepository productoRepository)
        {
            _productoRepository = productoRepository;
        }
        public List<Producto> ConsultarProducto()
        {
            List<Producto> listProducto;
            listProducto = _productoRepository.ConsultarProducto();
            return listProducto;
        }

        public StatusResponse InsertarProducto(Producto producto)
        {
            StatusResponse response;
            try
            {
                _productoRepository.InsertarProducto(producto);
                response = new StatusResponse("Ok", $"Producto insertado correctamente");
            }
            catch(Exception ex)
            {
                response = new StatusResponse("Error", $"Error al insertar producto {producto.Nombre}");
                Log.Error($"{response.Message} - {ex.InnerException}"); //impresion seriLog para obtener erros 
            }
            return response;
        }
    }
}
