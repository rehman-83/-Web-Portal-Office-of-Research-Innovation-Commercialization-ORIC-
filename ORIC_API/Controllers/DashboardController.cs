using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Data;
using ORIC_API.DTOs.Dashboard;

namespace ORIC_API.Controllers;

[ApiController]
[Authorize]
[Route("api/dashboard")]
public class DashboardController : ControllerBase
{
    private readonly ApplicationDbContext _dbContext;

    public DashboardController(ApplicationDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    [HttpGet("stats")]
    public async Task<ActionResult<DashboardStatsDto>> GetStats()
    {
        var totalAdmins = await _dbContext.AdminUsers.CountAsync(x => x.IsActive);
        var totalNews = await _dbContext.NewsItems.CountAsync();
        var publishedNews = await _dbContext.NewsItems.CountAsync(x => x.IsPublished);
        var lastUpdate = await _dbContext.NewsItems
            .OrderByDescending(x => x.UpdatedAt ?? x.CreatedAt)
            .Select(x => x.UpdatedAt ?? x.CreatedAt)
            .FirstOrDefaultAsync();

        return Ok(new DashboardStatsDto
        {
            TotalAdmins = totalAdmins,
            TotalNews = totalNews,
            PublishedNews = publishedNews,
            DraftNews = totalNews - publishedNews,
            LastContentUpdateUtc = lastUpdate == default ? null : lastUpdate
        });
    }
}
