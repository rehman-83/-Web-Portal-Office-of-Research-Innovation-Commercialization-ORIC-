namespace ORIC_API.DTOs.Cms;

public class AnnouncementCreateUpdateDto
{
    public string Title { get; set; } = string.Empty;
    public string? Content { get; set; }
    public string? LinkUrl { get; set; }
    public bool IsPublished { get; set; }
    public DateTime PublishDate { get; set; } = DateTime.UtcNow;
}
