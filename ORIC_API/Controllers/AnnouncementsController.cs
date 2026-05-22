using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Data;
using ORIC_API.DTOs.Cms;
using ORIC_API.Models;

namespace ORIC_API.Controllers;

[ApiController]
[Route("api/announcements")]
public class AnnouncementsController : ControllerBase
{
    private readonly ApplicationDbContext _dbContext;

    public AnnouncementsController(ApplicationDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    [HttpGet]
    [AllowAnonymous]
    public async Task<ActionResult<IEnumerable<AnnouncementItem>>> GetPublished()
    {
        var items = await _dbContext.AnnouncementItems
            .Where(x => x.IsPublished)
            .OrderByDescending(x => x.PublishDate)
            .ToListAsync();

        return Ok(items);
    }

    [HttpGet("admin")]
    [Authorize]
    public async Task<ActionResult<IEnumerable<AnnouncementItem>>> GetAll()
    {
        var items = await _dbContext.AnnouncementItems
            .OrderByDescending(x => x.PublishDate)
            .ToListAsync();

        return Ok(items);
    }

    [HttpGet("{id:int}")]
    [AllowAnonymous]
    public async Task<ActionResult<AnnouncementItem>> GetById(int id)
    {
        var item = await _dbContext.AnnouncementItems.FindAsync(id);
        return item is null ? NotFound() : Ok(item);
    }

    [HttpPost]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<AnnouncementItem>> Create([FromBody] CmsContentCreateUpdateDto dto)
    {
        var entity = new AnnouncementItem
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

        _dbContext.AnnouncementItems.Add(entity);
        await _dbContext.SaveChangesAsync();

        return CreatedAtAction(nameof(GetById), new { id = entity.Id }, entity);
    }

    [HttpPut("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<AnnouncementItem>> Update(int id, [FromBody] CmsContentCreateUpdateDto dto)
    {
        var entity = await _dbContext.AnnouncementItems.FindAsync(id);
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
    public async Task<ActionResult<AnnouncementItem>> Publish(int id)
    {
        var entity = await _dbContext.AnnouncementItems.FindAsync(id);
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
    public async Task<ActionResult<AnnouncementItem>> Unpublish(int id)
    {
        var entity = await _dbContext.AnnouncementItems.FindAsync(id);
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
        var entity = await _dbContext.AnnouncementItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        _dbContext.AnnouncementItems.Remove(entity);
        await _dbContext.SaveChangesAsync();
        return NoContent();
    }
}
