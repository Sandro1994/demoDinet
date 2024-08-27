using appDemo.Data.Context;
using appDemo.Repositories.Abstract;
using appDemo.Repositories.Implementation;
using appDemo.Service.Implementation;
using appDemo.Service.Interface;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllersWithViews();
// Add services to the container.

builder.Services.AddDbContext<dbDinetContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("dinetConnectionString"));
});

builder.Services.AddControllers();
builder.Services.AddRazorPages();
builder.Services.AddScoped<IProductoService, ProductoService>();
builder.Services.AddScoped<IProductoRepository, ProductoRepository>();
builder.Services.AddCors();
var app = builder.Build();
app.UseCors(x => x.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}
app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();
app.UseEndpoints(endpoints =>
{
    endpoints.MapControllers();
});
app.Run();
