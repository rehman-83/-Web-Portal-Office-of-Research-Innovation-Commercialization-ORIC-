using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Data;
using ORIC_API.DTOs.News;
using ORIC_API.Models;

namespace ORIC_API.Controllers;

[ApiController]
[Route("api/news")]
public class NewsController : ControllerBase
{
    private readonly ApplicationDbContext _dbContext;

    public NewsController(ApplicationDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    [HttpGet]
    [AllowAnonymous]
    public async Task<ActionResult<IEnumerable<NewsItem>>> GetPublishedNews()
    {
        var items = await _dbContext.NewsItems
            .Where(x => x.IsPublished)
            .OrderByDescending(x => x.PublishDate)
            .ToListAsync();

        return Ok(items);
    }

    [HttpGet("admin")]
    [Authorize]
    public async Task<ActionResult<IEnumerable<NewsItem>>> GetAllNews()
    {
        var items = await _dbContext.NewsItems
            .OrderByDescending(x => x.PublishDate)
            .ToListAsync();

        return Ok(items);
    }

    [HttpGet("{id:int}")]
    [AllowAnonymous]
    public async Task<ActionResult<NewsItem>> GetById(int id)
    {
        var item = await _dbContext.NewsItems.FindAsync(id);
        if (item is null)
        {
            return NotFound();
        }

        return Ok(item);
    }

    [HttpPost]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<NewsItem>> Create([FromBody] NewsCreateUpdateDto dto)
    {
        var entity = new NewsItem
        {
            Title = dto.Title.Trim(),
            Summary = dto.Summary,
            Content = dto.Content,
            ImageUrl = dto.ImageUrl,
            IsPublished = dto.IsPublished,
            PublishDate = dto.PublishDate,
            CreatedAt = DateTime.UtcNow
        };

        _dbContext.NewsItems.Add(entity);
        await _dbContext.SaveChangesAsync();

        return CreatedAtAction(nameof(GetById), new { id = entity.Id }, entity);
    }

    [HttpPut("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<ActionResult<NewsItem>> Update(int id, [FromBody] NewsCreateUpdateDto dto)
    {
        var entity = await _dbContext.NewsItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        entity.Title = dto.Title.Trim();
        entity.Summary = dto.Summary;
        entity.Content = dto.Content;
        entity.ImageUrl = dto.ImageUrl;
        entity.IsPublished = dto.IsPublished;
        entity.PublishDate = dto.PublishDate;
        entity.UpdatedAt = DateTime.UtcNow;

        await _dbContext.SaveChangesAsync();

        return Ok(entity);
    }

    [HttpDelete("{id:int}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Delete(int id)
    {
        var entity = await _dbContext.NewsItems.FindAsync(id);
        if (entity is null)
        {
            return NotFound();
        }

        _dbContext.NewsItems.Remove(entity);
        await _dbContext.SaveChangesAsync();

        return NoContent();
    }
}
