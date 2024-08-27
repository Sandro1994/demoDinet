using appDemo.Models.Entities;
using appDemo.Service.Interface;
using Microsoft.AspNetCore.Mvc;

namespace appDemo.Controllers
{
    [Route("api/[Controller]")]
    public class ProductosController : Controller
    {
        private readonly IProductoService _productoService;

        public ProductosController(IProductoService productoService)
        {
            _productoService = productoService;
        }

        [HttpGet("Consultar")]
        public IActionResult Consultar() 
        {
            var response = _productoService.ConsultarProducto();
            return new OkObjectResult(response);
        }

        [HttpPost("Insertar")]
        public async Task<IActionResult> Insertar([FromBody] Producto producto)
        {
            var response = _productoService.InsertarProducto(producto);
            return new OkObjectResult(response);
        }
    }
}
