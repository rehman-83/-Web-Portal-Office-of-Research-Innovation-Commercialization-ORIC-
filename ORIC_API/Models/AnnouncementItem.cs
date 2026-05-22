namespace ORIC_API.Models;

public class AnnouncementItem
{
    public int Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string? Content { get; set; }
    public string? LinkUrl { get; set; }
    public bool IsPublished { get; set; }
    public DateTime PublishDate { get; set; } = DateTime.UtcNow;
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? UpdatedAt { get; set; }
}
