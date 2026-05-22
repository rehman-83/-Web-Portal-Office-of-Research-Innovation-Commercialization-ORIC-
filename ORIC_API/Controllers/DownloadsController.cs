using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Data;
using ORIC_API.DTOs.Cms;
using ORIC_API.Models;

namespace ORIC_API.Controllers;

[ApiController]
[Route("api/downloads")]
public class DownloadsController : ControllerBase
{
    private readonly ApplicationDbContext _dbContext;

    public DownloadsController(ApplicationDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    [HttpGet]
    [AllowAnonymous]
    public async Task<ActionResult<IEnumerable<DownloadItem>>> GetPublished()
    {
        var items = await _dbContext.DownloadItems
            .Where(x => x.IsPublished)
            .OrderByDescending(x => x.PublishDate)
            .ToListAsync();

        return Ok(items);
    }

    [HttpGet("admin")]
    [Authorize]
    public async Task<ActionResult<IEnumerable<DownloadItem>>> GetAll()
    {
        var items = await _dbContext.DownloadItems
            .OrderByDescending(x => x.PublishDate)
            .ToListAsync();

        return Ok(items);
    }

    [HttpGet("{id:int}")]
    [AllowAnonymous]
    public async Task<ActionResult<DownloadItem>> GetById(int id)
    {
        var item = await _dbContext.DownloadItems.FindAsync(id);
        return item is null ? NotFound() : Ok(item);
    }

    [HttpPost]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<DownloadItem>> Create([FromBody] CmsContentCreateUpdateDto dto)
    {
        var entity = new DownloadItem
        {
            Title = dto.Title.Trim(),
            Summary = dto.Summary,
            Content = dto.Content,
            ImageUrl = dto.ImageUrl,
            FileUrl = dto.FileUrl,
            IsPublished = dto.IsPublished,
            PublishDate = dto.PublishDate,
            CreatedAt = DateTime.UtcNow
        };

        _dbContext.DownloadItems.Add(entity);
        await _dbContext.SaveChangesAsync();

        return CreatedAtAction(nameof(GetById), new { id = entity.Id }, entity);
    }

    [HttpPut("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<DownloadItem>> Update(int id, [FromBody] CmsContentCreateUpdateDto dto)
    {
        var entity = await _dbContext.DownloadItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        entity.Title = dto.Title.Trim();
        entity.Summary = dto.Summary;
        entity.Content = dto.Content;
        entity.ImageUrl = dto.ImageUrl;
        entity.FileUrl = dto.FileUrl;
        entity.IsPublished = dto.IsPublished;
        entity.PublishDate = dto.PublishDate;
        entity.UpdatedAt = DateTime.UtcNow;

        await _dbContext.SaveChangesAsync();
        return Ok(entity);
    }

    [HttpPatch("{id:int}/publish")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<DownloadItem>> Publish(int id)
    {
        var entity = await _dbContext.DownloadItems.FindAsync(id);
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
    public async Task<ActionResult<DownloadItem>> Unpublish(int id)
    {
        var entity = await _dbContext.DownloadItems.FindAsync(id);
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
        var entity = await _dbContext.DownloadItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        _dbContext.DownloadItems.Remove(entity);
        await _dbContext.SaveChangesAsync();
        return NoContent();
    }
}
