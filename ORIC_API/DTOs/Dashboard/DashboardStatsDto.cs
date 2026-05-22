namespace ORIC_API.DTOs.Dashboard;

public class DashboardStatsDto
{
    public int TotalAdmins { get; set; }
    public int TotalNews { get; set; }
    public int PublishedNews { get; set; }
    public int DraftNews { get; set; }
    public DateTime? LastContentUpdateUtc { get; set; }
}
