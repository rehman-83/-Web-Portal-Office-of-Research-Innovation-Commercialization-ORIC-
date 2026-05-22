using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Models;
using System.IO;

namespace ORIC_API.Data;

public static class DbSeeder
{
    public static async Task SeedAsync(IServiceProvider serviceProvider)
    {
        using var scope = serviceProvider.CreateScope();
        var dbContext = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
        var hostEnvironment = scope.ServiceProvider.GetRequiredService<IWebHostEnvironment>();

        // Drop AnnouncementItems table if it exists to recreate with correct schema
        try
        {
            await dbContext.Database.ExecuteSqlRawAsync("DROP TABLE IF EXISTS [AnnouncementItems]");
        }
        catch { }

        await dbContext.Database.EnsureCreatedAsync();
        await EnsureCmsTablesAsync(dbContext);
        await CleanupLegacyGalleryAsync(dbContext, hostEnvironment);
        await CleanupLegacyNewsAndAnnouncementsAsync(dbContext);

        // Seed admin user if not exists
        if (!await dbContext.AdminUsers.AnyAsync())
        {
            var defaultAdmin = new AdminUser
            {
                Username = "admin",
                FullName = "System Administrator",
                PasswordHash = BCrypt.Net.BCrypt.HashPassword("Admin@123"),
                Role = "Admin",
                IsActive = true,
                CreatedAt = DateTime.UtcNow
            };

            dbContext.AdminUsers.Add(defaultAdmin);
            await dbContext.SaveChangesAsync();
        }
    }

    private static async Task CleanupLegacyNewsAndAnnouncementsAsync(ApplicationDbContext dbContext)
    {
        if (await dbContext.NewsItems.AnyAsync())
        {
            dbContext.NewsItems.RemoveRange(dbContext.NewsItems);
            await dbContext.SaveChangesAsync();
        }

        if (await dbContext.AnnouncementItems.AnyAsync())
        {
            dbContext.AnnouncementItems.RemoveRange(dbContext.AnnouncementItems);
            await dbContext.SaveChangesAsync();
        }
    }

    private static async Task CleanupLegacyGalleryAsync(ApplicationDbContext dbContext, IWebHostEnvironment hostEnvironment)
    {
        var cleanupStatePath = Path.Combine(hostEnvironment.ContentRootPath, "obj", ".gallery-cleanup.done");
        if (File.Exists(cleanupStatePath))
        {
            return;
        }

        var galleryFolder = Path.GetFullPath(Path.Combine(hostEnvironment.ContentRootPath, "..", "public", "assets", "img", "gallery"));
        var legacyApiGalleryFolder = Path.Combine(hostEnvironment.ContentRootPath, "wwwroot", "assets", "uploads", "gallery");

        if (await dbContext.GalleryItems.AnyAsync())
        {
            dbContext.GalleryItems.RemoveRange(dbContext.GalleryItems);
            await dbContext.SaveChangesAsync();
        }

        ClearDirectoryContents(galleryFolder);
        ClearDirectoryContents(legacyApiGalleryFolder);

        Directory.CreateDirectory(galleryFolder);
        Directory.CreateDirectory(Path.GetDirectoryName(cleanupStatePath)!);
        await File.WriteAllTextAsync(cleanupStatePath, DateTime.UtcNow.ToString("O"));
    }

    private static void ClearDirectoryContents(string directoryPath)
    {
        if (!Directory.Exists(directoryPath))
        {
            return;
        }

        foreach (var file in Directory.GetFiles(directoryPath))
        {
            File.Delete(file);
        }

        foreach (var subDirectory in Directory.GetDirectories(directoryPath))
        {
            Directory.Delete(subDirectory, true);
        }
    }

    private static async Task EnsureCmsTablesAsync(ApplicationDbContext dbContext)
    {
        var scripts = new[]
        {
            @"IF OBJECT_ID(N'[PublicationItems]', N'U') IS NULL
              BEGIN
                  CREATE TABLE [PublicationItems] (
                      [Id] int NOT NULL IDENTITY,
                      [Title] nvarchar(300) NOT NULL,
                      [Summary] nvarchar(1000) NULL,
                      [Content] nvarchar(max) NULL,
                      [ImageUrl] nvarchar(500) NULL,
                      [FileUrl] nvarchar(500) NULL,
                      [IsPublished] bit NOT NULL,
                      [PublishDate] datetime2 NOT NULL,
                      [CreatedAt] datetime2 NOT NULL,
                      [UpdatedAt] datetime2 NULL,
                      CONSTRAINT [PK_PublicationItems] PRIMARY KEY ([Id])
                  );
              END",
            @"IF OBJECT_ID(N'[DownloadItems]', N'U') IS NULL
              BEGIN
                  CREATE TABLE [DownloadItems] (
                      [Id] int NOT NULL IDENTITY,
                      [Title] nvarchar(300) NOT NULL,
                      [Summary] nvarchar(1000) NULL,
                      [Content] nvarchar(max) NULL,
                      [ImageUrl] nvarchar(500) NULL,
                      [FileUrl] nvarchar(500) NULL,
                      [IsPublished] bit NOT NULL,
                      [PublishDate] datetime2 NOT NULL,
                      [CreatedAt] datetime2 NOT NULL,
                      [UpdatedAt] datetime2 NULL,
                      CONSTRAINT [PK_DownloadItems] PRIMARY KEY ([Id])
                  );
              END",
            @"IF OBJECT_ID(N'[GalleryItems]', N'U') IS NULL
              BEGIN
                  CREATE TABLE [GalleryItems] (
                      [Id] int NOT NULL IDENTITY,
                      [Title] nvarchar(300) NOT NULL,
                      [Summary] nvarchar(1000) NULL,
                      [Content] nvarchar(max) NULL,
                      [ImageUrl] nvarchar(500) NULL,
                      [FileUrl] nvarchar(500) NULL,
                      [IsPublished] bit NOT NULL,
                      [PublishDate] datetime2 NOT NULL,
                      [CreatedAt] datetime2 NOT NULL,
                      [UpdatedAt] datetime2 NULL,
                      CONSTRAINT [PK_GalleryItems] PRIMARY KEY ([Id])
                  );
              END",
            @"IF OBJECT_ID(N'[AnnouncementItems]', N'U') IS NULL
              BEGIN
                  CREATE TABLE [AnnouncementItems] (
                      [Id] int NOT NULL IDENTITY,
                      [Title] nvarchar(300) NOT NULL,
                      [Summary] nvarchar(1000) NULL,
                      [Content] nvarchar(max) NULL,
                      [ImageUrl] nvarchar(500) NULL,
                      [FileUrl] nvarchar(500) NULL,
                      [IsPublished] bit NOT NULL,
                      [PublishDate] datetime2 NOT NULL,
                      [CreatedAt] datetime2 NOT NULL,
                      [UpdatedAt] datetime2 NULL,
                      CONSTRAINT [PK_AnnouncementItems] PRIMARY KEY ([Id])
                  );
              END"
        };

        foreach (var script in scripts)
        {
            await dbContext.Database.ExecuteSqlRawAsync(script);
        }
    }
}
