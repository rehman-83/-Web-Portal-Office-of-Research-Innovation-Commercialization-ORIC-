namespace ORIC_API.DTOs.News;

public class NewsCreateUpdateDto
{
    public string Title { get; set; } = string.Empty;
    public string? Summary { get; set; }
    public string Content { get; set; } = string.Empty;
    public string? ImageUrl { get; set; }
    public bool IsPublished { get; set; }
    public DateTime PublishDate { get; set; } = DateTime.UtcNow;
}
