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

        await dbContext.Database.EnsureCreatedAsync();
        await EnsureCmsTablesAsync(dbContext);
        await CleanupLegacyGalleryAsync(dbContext, hostEnvironment);

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

        // Seed newsletters
        await SeedNewslettersAsync(dbContext);
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

    private static async Task SeedNewslettersAsync(ApplicationDbContext dbContext)
    {
        if (await dbContext.PublicationItems.AnyAsync(x => x.Title.Contains("Newsletter")))
        {
            return;
        }

        var newsletters = new List<PublicationItem>();
        var baseDir = "/assets/files/ORIC Newsletter";

        // 2026 Newsletters
        newsletters.Add(new PublicationItem { Title = "January 01 to 31, 2026", Summary = "Newsletter January 2026", FileUrl = $"{baseDir}/2026/ORIC Newsletter-1 (January 01 to 31, 2026).pdf", IsPublished = true, PublishDate = new DateTime(2026, 1, 31), CreatedAt = DateTime.UtcNow });

        // 2025 Newsletters
        var newsletters2025 = new[] {
            new { title = "December 01 to 31, 2025", file = "ORIC Newsletter-1 (December 01 to 31, 2025).pdf", date = new DateTime(2025, 12, 31) },
            new { title = "November 16 to 30, 2025", file = "ORIC Newsletter-1 (November 16 to 30, 2025).pdf", date = new DateTime(2025, 11, 30) },
            new { title = "November 01 to 15, 2025", file = "ORIC Newsletter-1 (November 01 to 15, 2025).pdf", date = new DateTime(2025, 11, 15) },
            new { title = "October 1, 2025", file = "UAF Newsletter-1 (october 1, 2025).pdf", date = new DateTime(2025, 10, 1) },
            new { title = "October 16 to 31, 2025", file = "ORIC Newsletter-1 (October 16 to 31, 2025).pdf", date = new DateTime(2025, 10, 31) },
            new { title = "October 01 to 15, 2025", file = "ORIC Newsletter-1 (October 01 to 15, 2025).pdf", date = new DateTime(2025, 10, 15) },
            new { title = "September 16 to 30, 2025", file = "ORIC Newsletter-1 (September 16 to 30, 2025).pdf", date = new DateTime(2025, 9, 30) },
            new { title = "September 01 to 15, 2025", file = "ORIC Newsletter-1 (September 01 to 15, 2025).pdf", date = new DateTime(2025, 9, 15) },
            new { title = "August 16 to 31, 2025", file = "ORIC Newsletter-1 (August 16 to 31, 2025).pdf", date = new DateTime(2025, 8, 31) },
            new { title = "August 1 to 15, 2025", file = "ORIC Newsletter-1 (August 1 to 15, 2025).pdf", date = new DateTime(2025, 8, 15) },
            new { title = "July 16 to 31, 2025", file = "ORIC Newsletter-1 (July 16 to 31, 2025).pdf", date = new DateTime(2025, 7, 31) },
            new { title = "July 1 to 15, 2025", file = "ORIC Newsletter-1 (July 1 to 15, 2025).pdf", date = new DateTime(2025, 7, 15) },
            new { title = "June 16 to 30, 2025", file = "ORIC Newsletter-1 (June 16 to 30, 2025).pdf", date = new DateTime(2025, 6, 30) },
            new { title = "June 01 to 15, 2025", file = "ORIC Newsletter-1 (June 01 to 15, 2025).pdf", date = new DateTime(2025, 6, 15) },
            new { title = "May 16 to 31, 2025", file = "ORIC Newsletter-1 (May 16 to 31, 2025).pdf", date = new DateTime(2025, 5, 31) },
            new { title = "May 1 to 15, 2025", file = "ORIC Newsletter-1 (May 1 to 15, 2025).pdf", date = new DateTime(2025, 5, 15) },
            new { title = "April 16 to 30, 2025", file = "ORIC Newsletter-1 (April 16 to 30, 2025).pdf", date = new DateTime(2025, 4, 30) },
            new { title = "April 01 to 15, 2025", file = "ORIC Newsletter-1 (April 01 to 15, 2025).pdf", date = new DateTime(2025, 4, 15) },
            new { title = "March 16 to 31, 2025", file = "ORIC Newsletter-1 (March 16 to 31, 2025).pdf", date = new DateTime(2025, 3, 31) },
            new { title = "March 1 to 15, 2025", file = "ORIC Newsletter-1 (March 1 to 15, 2025).pdf", date = new DateTime(2025, 3, 15) },
            new { title = "February 16 to 28, 2025", file = "ORIC Newsletter-1 (February 16 to 28, 2025).pdf", date = new DateTime(2025, 2, 28) },
            new { title = "February 1st to 15, 2025", file = "ORIC Newsletter-1 (February 1st to 15, 2025).pdf", date = new DateTime(2025, 2, 15) },
            new { title = "January 16 to 31, 2025", file = "ORIC Newsletter-1 (January 16  to 31, 2025).pdf", date = new DateTime(2025, 1, 31) },
            new { title = "January 01 to 15, 2025", file = "ORIC Newsletter-1 (January 01  to 15, 2025).pdf", date = new DateTime(2025, 1, 15) }
        };

        foreach (var nl in newsletters2025)
        {
            newsletters.Add(new PublicationItem
            {
                Title = nl.title,
                Summary = $"Newsletter - {nl.title}",
                FileUrl = $"{baseDir}/2025/{nl.file}",
                IsPublished = true,
                PublishDate = nl.date,
                CreatedAt = DateTime.UtcNow
            });
        }

        // 2024 Newsletters
        var newsletters2024 = new[] {
            new { title = "December 16 to 31, 2024", file = "ORIC Newsletter-1 (December 16  to 31, 2024).pdf", date = new DateTime(2024, 12, 31) },
            new { title = "December 1st to 15, 2024", file = "ORIC Newsletter-1 (December 1st to 15, 2024).pdf", date = new DateTime(2024, 12, 15) },
            new { title = "November 15 to 30, 2024", file = "ORIC Newsletter-1 (November 15 to 30, 2024).pdf", date = new DateTime(2024, 11, 30) },
            new { title = "November 1 to 15, 2024", file = "ORIC Newsletter-1 (November 1 to 15, 2024).pdf", date = new DateTime(2024, 11, 15) },
            new { title = "Quick Facts October 2024", file = "Quick Facts October 2024.pdf", date = new DateTime(2024, 10, 31) },
            new { title = "October 1 to 15, 2024", file = "ORIC Newsletter-1 (October 1 to 15, 2024).pdf", date = new DateTime(2024, 10, 15) },
            new { title = "August 1 to 31, 2024", file = "ORIC Newsletter-1 (August 1 to 31, 2024).pdf", date = new DateTime(2024, 8, 31) },
            new { title = "July 1 to 31, 2024", file = "ORIC Newsletter-1 (July 1 to 31, 2024).pdf", date = new DateTime(2024, 7, 31) },
            new { title = "June 16 to 30, 2024", file = "ORIC Newsletter-1 (June 16 to 30, 2024).pdf", date = new DateTime(2024, 6, 30) },
            new { title = "June 1st to 15, 2024", file = "ORIC Newsletter-1 (June 1st to 15, 2024).pdf", date = new DateTime(2024, 6, 15) },
            new { title = "May 16 to 31, 2024", file = "ORIC Newsletter-1 (May 16 to 31, 2024).pdf", date = new DateTime(2024, 5, 31) },
            new { title = "May 01 to 15, 2024", file = "ORIC Newsletter-1 (May 01 to 15, 2024).pdf", date = new DateTime(2024, 5, 15) },
            new { title = "April 01 to 30, 2024", file = "ORIC Newsletter-1 (APRIL 01 to 30, 2024).pdf", date = new DateTime(2024, 4, 30) },
            new { title = "March 01 to 31, 2024", file = "ORIC Newsletter-1 (March 01 to 31, 2024).pdf", date = new DateTime(2024, 3, 31) },
            new { title = "January 01 to 15, 2024", file = "ORIC Newsletter-1 (January 01 to 15, 2024).pdf", date = new DateTime(2024, 1, 15) }
        };

        foreach (var nl in newsletters2024)
        {
            newsletters.Add(new PublicationItem
            {
                Title = nl.title,
                Summary = $"Newsletter - {nl.title}",
                FileUrl = $"{baseDir}/2024/{nl.file}",
                IsPublished = true,
                PublishDate = nl.date,
                CreatedAt = DateTime.UtcNow
            });
        }

        // 2023 Newsletters
        var newsletters2023 = new[] {
            new { title = "September 15 to 30, 2023", file = "ORIC Newsletter-1(Sep15,30,2023).pdf", date = new DateTime(2023, 9, 30) },
            new { title = "September 01 to 15, 2023", file = "ORIC Newsletter-1(Sep 01,15,2023).pdf", date = new DateTime(2023, 9, 15) },
            new { title = "August 15 to 30, 2023", file = "ORIC Newsletter-1 (August 15 to 30, 2023).pdf", date = new DateTime(2023, 8, 30) },
            new { title = "August 1st to 15, 2023", file = "ORIC Newsletter-1 (August 1st to 15, 2023).pdf", date = new DateTime(2023, 8, 15) },
            new { title = "July 1st to 15, 2023", file = "ORIC Newsletter-1 (July 1st to 15, 2023) (1).pdf", date = new DateTime(2023, 7, 15) },
            new { title = "June 1st to 30, 2023", file = "ORIC Newsletter-1 (June 1st to 30, 2023).pdf", date = new DateTime(2023, 6, 30) },
            new { title = "May 15 to 31, 2023", file = "ORIC Newsletter-1 (May 15 to 31, 2023).pdf", date = new DateTime(2023, 5, 31) },
            new { title = "May 01 to 15, 2023", file = "ORIC Newsletter-1 (May 01 to 15, 2023).pdf", date = new DateTime(2023, 5, 15) },
            new { title = "March 15 to 30, 2023", file = "ORIC Newsletter-1 (March 15 to 30, 2023).pdf", date = new DateTime(2023, 3, 30) },
            new { title = "March 01 to 15, 2023", file = "ORIC Newsletter-1 (March 01 to 15, 2023).pdf", date = new DateTime(2023, 3, 15) }
        };

        foreach (var nl in newsletters2023)
        {
            newsletters.Add(new PublicationItem
            {
                Title = nl.title,
                Summary = $"Newsletter - {nl.title}",
                FileUrl = $"{baseDir}/2023/{nl.file}",
                IsPublished = true,
                PublishDate = nl.date,
                CreatedAt = DateTime.UtcNow
            });
        }

        // Volume Archives (Vol 1-138)
        for (int i = 138; i >= 1; i--)
        {
            string filename = i > 110 ? $"ORIC NEWS Vol. {i}.pdf" : $"ORIC_News_{i}.pdf";
            newsletters.Add(new PublicationItem
            {
                Title = $"Vol. {i}",
                Summary = $"ORIC Newsletter Volume {i}",
                FileUrl = $"{baseDir}/vol/{filename}",
                IsPublished = true,
                PublishDate = new DateTime(2020, 1, 1).AddMonths(138 - i),
                CreatedAt = DateTime.UtcNow
            });
        }

        dbContext.PublicationItems.AddRange(newsletters);
        await dbContext.SaveChangesAsync();
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
