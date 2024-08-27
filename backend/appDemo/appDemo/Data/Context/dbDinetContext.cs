using appDemo.Models.Entities;
using Microsoft.EntityFrameworkCore;

namespace appDemo.Data.Context
{
    public class dbDinetContext : DbContext
    {
        public DbContextOptions<dbDinetContext> Options { get; set; }
        public DbSet<Producto> Productos { get; set; }
        public dbDinetContext(DbContextOptions<dbDinetContext> options) : base (options)
        {
            Options = options;
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Producto>(entity =>
            {
                entity.ToTable("Productos");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Nombre).HasColumnName("Nombre");
                entity.Property(e => e.Precio).HasColumnName("Precio");
                entity.Property(e => e.FechaCreacion).HasColumnName("FechaCreacion");
            });
        }
    }
}
