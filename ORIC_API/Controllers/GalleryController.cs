using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Data;
using ORIC_API.DTOs.Cms;
using ORIC_API.Models;

namespace ORIC_API.Controllers;

[ApiController]
[Route("api/gallery")]
public class GalleryController : ControllerBase
{
    private readonly ApplicationDbContext _dbContext;

    public GalleryController(ApplicationDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    [HttpGet]
    [AllowAnonymous]
    public async Task<ActionResult<IEnumerable<GalleryItem>>> GetPublished()
    {
        var items = await _dbContext.GalleryItems
            .Where(x => x.IsPublished)
            .OrderByDescending(x => x.CreatedAt)
            .ThenByDescending(x => x.Id)
            .ToListAsync();

        return Ok(items.Select(NormalizeGalleryItem));
    }

    [HttpGet("admin")]
    [Authorize]
    public async Task<ActionResult<IEnumerable<GalleryItem>>> GetAll()
    {
        var items = await _dbContext.GalleryItems
            .OrderByDescending(x => x.CreatedAt)
            .ThenByDescending(x => x.Id)
            .ToListAsync();

        return Ok(items.Select(NormalizeGalleryItem));
    }

    [HttpGet("{id:int}")]
    [AllowAnonymous]
    public async Task<ActionResult<GalleryItem>> GetById(int id)
    {
        var item = await _dbContext.GalleryItems.FindAsync(id);
        return item is null ? NotFound() : Ok(NormalizeGalleryItem(item));
    }

    [HttpPost]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<GalleryItem>> Create([FromBody] CmsContentCreateUpdateDto dto)
    {
        var imageUrl = NormalizeGalleryImageUrl(dto.ImageUrl);
        if (imageUrl is null)
        {
            return BadRequest("Gallery images must use /assets/img/gallery/ paths.");
        }

        var entity = new GalleryItem
        {
            Title = dto.Title.Trim(),
            Summary = dto.Summary,
            Content = dto.Content,
            ImageUrl = imageUrl,
            FileUrl = dto.FileUrl,
            IsPublished = dto.IsPublished,
            PublishDate = dto.PublishDate,
            CreatedAt = DateTime.UtcNow
        };

        _dbContext.GalleryItems.Add(entity);
        await _dbContext.SaveChangesAsync();

        return CreatedAtAction(nameof(GetById), new { id = entity.Id }, entity);
    }

    [HttpPut("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<GalleryItem>> Update(int id, [FromBody] CmsContentCreateUpdateDto dto)
    {
        var entity = await _dbContext.GalleryItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        var imageUrl = NormalizeGalleryImageUrl(dto.ImageUrl);
        if (imageUrl is null)
        {
            return BadRequest("Gallery images must use /assets/img/gallery/ paths.");
        }

        entity.Title = dto.Title.Trim();
        entity.Summary = dto.Summary;
        entity.Content = dto.Content;
        entity.ImageUrl = imageUrl;
        entity.FileUrl = dto.FileUrl;
        entity.IsPublished = dto.IsPublished;
        entity.PublishDate = dto.PublishDate;
        entity.UpdatedAt = DateTime.UtcNow;

        await _dbContext.SaveChangesAsync();
        return Ok(entity);
    }

    [HttpPatch("{id:int}/publish")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<GalleryItem>> Publish(int id)
    {
        var entity = await _dbContext.GalleryItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        entity.IsPublished = true;
        entity.UpdatedAt = DateTime.UtcNow;
        await _dbContext.SaveChangesAsync();

        return Ok(entity);
    }

    [HttpPatch("{id:int}/unpublish")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<GalleryItem>> Unpublish(int id)
    {
        var entity = await _dbContext.GalleryItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        entity.IsPublished = false;
        entity.UpdatedAt = DateTime.UtcNow;
        await _dbContext.SaveChangesAsync();

        return Ok(entity);
    }

    [HttpDelete("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Delete(int id)
    {
        var entity = await _dbContext.GalleryItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        _dbContext.GalleryItems.Remove(entity);
        await _dbContext.SaveChangesAsync();
        return NoContent();
    }

    private static GalleryItem NormalizeGalleryItem(GalleryItem item)
    {
        item.ImageUrl = NormalizeGalleryImageUrl(item.ImageUrl);
        return item;
    }

    private static string? NormalizeGalleryImageUrl(string? imageUrl)
    {
        if (string.IsNullOrWhiteSpace(imageUrl))
            return imageUrl;

        if (Uri.TryCreate(imageUrl, UriKind.Absolute, out var absoluteUri))
        {
            var legacyPathIndex = absoluteUri.AbsolutePath.IndexOf("/assets/", StringComparison.OrdinalIgnoreCase);
            if (legacyPathIndex >= 0)
            {
                var legacyPath = absoluteUri.AbsolutePath.Substring(legacyPathIndex);
                return NormalizeGalleryImageUrl(legacyPath);
            }

            return imageUrl;
        }

        var normalized = imageUrl.Replace('\\', '/');

        if (normalized.StartsWith("/assets/img/gallery/", StringComparison.OrdinalIgnoreCase))
            return normalized;

        return null;
    }
}
