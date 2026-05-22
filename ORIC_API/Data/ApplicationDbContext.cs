using Microsoft.EntityFrameworkCore;
using ORIC_API.Models;

namespace ORIC_API.Data;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
    {
    }

    public DbSet<AdminUser> AdminUsers => Set<AdminUser>();
    public DbSet<NewsItem> NewsItems => Set<NewsItem>();
    public DbSet<PublicationItem> PublicationItems => Set<PublicationItem>();
    public DbSet<DownloadItem> DownloadItems => Set<DownloadItem>();
    public DbSet<GalleryItem> GalleryItems => Set<GalleryItem>();
    public DbSet<AnnouncementItem> AnnouncementItems => Set<AnnouncementItem>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<AdminUser>(entity =>
        {
            entity.HasKey(x => x.Id);
            entity.Property(x => x.Username).HasMaxLength(100).IsRequired();
            entity.Property(x => x.FullName).HasMaxLength(200).IsRequired();
            entity.Property(x => x.Role).HasMaxLength(50).IsRequired();
            entity.Property(x => x.PasswordHash).IsRequired();
            entity.HasIndex(x => x.Username).IsUnique();
        });

        modelBuilder.Entity<NewsItem>(entity =>
        {
            entity.HasKey(x => x.Id);
            entity.Property(x => x.Title).HasMaxLength(300).IsRequired();
            entity.Property(x => x.Summary).HasMaxLength(1000);
            entity.Property(x => x.Content).IsRequired();
            entity.Property(x => x.ImageUrl).HasMaxLength(500);
        });

        modelBuilder.Entity<PublicationItem>(ConfigureCmsEntity);
        modelBuilder.Entity<DownloadItem>(ConfigureCmsEntity);
        modelBuilder.Entity<GalleryItem>(ConfigureCmsEntity);
        modelBuilder.Entity<AnnouncementItem>(ConfigureCmsEntity);
    }

    private static void ConfigureCmsEntity<T>(Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<T> entity)
        where T : class
    {
        entity.Property("Title").HasMaxLength(300).IsRequired();
        entity.Property("Summary").HasMaxLength(1000);
        entity.Property("ImageUrl").HasMaxLength(500);
        entity.Property("FileUrl").HasMaxLength(500);
    }
}
