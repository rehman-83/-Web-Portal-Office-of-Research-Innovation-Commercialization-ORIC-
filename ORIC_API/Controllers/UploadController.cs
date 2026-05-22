using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.IO;
using System.Threading.Tasks;
using ORIC_API.Services;

namespace ORIC_API.Controllers;

[ApiController]
[Route("api/upload")]
public class UploadController : ControllerBase
{
    private const int MaxGalleryImageSizeInMB = 10;
    private const int MaxGalleryBatchCount = 20;
    private const long MaxGalleryRequestSizeInBytes = 250L * 1024 * 1024;

    private readonly IWebHostEnvironment _hostEnvironment;
    private readonly string _uploadPath;
    private readonly string _galleryImagePath;
    private readonly FileValidationService _fileValidationService;

    public UploadController(IWebHostEnvironment hostEnvironment)
    {
        _hostEnvironment = hostEnvironment;
        _uploadPath = Path.Combine(_hostEnvironment.ContentRootPath, "wwwroot", "assets", "uploads");
        _galleryImagePath = Path.GetFullPath(Path.Combine(_hostEnvironment.ContentRootPath, "..", "public", "assets", "img", "gallery"));
        _fileValidationService = new FileValidationService();
    }

    [HttpPost("gallery")]
    [Authorize(Roles = "Admin")]
    [RequestSizeLimit(MaxGalleryRequestSizeInBytes)]
    [RequestFormLimits(MultipartBodyLengthLimit = MaxGalleryRequestSizeInBytes)]
    public async Task<IActionResult> UploadImage(IFormFile file)
    {
        var validation = _fileValidationService.ValidateImageFile(file, MaxGalleryImageSizeInMB);
        if (!validation.IsValid)
            return BadRequest(validation.ErrorMessage);

        try
        {
            Directory.CreateDirectory(_galleryImagePath);

            var fileExtension = Path.GetExtension(file.FileName).ToLowerInvariant();
            var fileName = $"{Guid.NewGuid()}{fileExtension}";
            var filePath = Path.Combine(_galleryImagePath, fileName);

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await file.CopyToAsync(stream);
            }

            var relativePath = $"/assets/img/gallery/{fileName}";
            return Ok(new { success = true, url = relativePath, fileName = fileName });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { error = ex.Message });
        }
    }

    /// <summary>
    /// Upload multiple images at once with validation and security checks
    /// </summary>
    [HttpPost("gallery/batch")]
    [Authorize(Roles = "Admin")]
    [RequestSizeLimit(MaxGalleryRequestSizeInBytes)]
    [RequestFormLimits(MultipartBodyLengthLimit = MaxGalleryRequestSizeInBytes)]
    public async Task<IActionResult> UploadMultipleImages()
    {
        try
        {
            var files = Request.Form.Files;

            // Check if files exist
            if (files == null || files.Count == 0)
            {
                return BadRequest(new
                {
                    success = false,
                    message = "No files provided",
                    errors = new[] { new { file = "batch", error = "At least one file is required" } }
                });
            }

            // Validate file count and individual files
            var validationResults = _fileValidationService.ValidateMultipleImageFiles(files, maxSizeInMB: MaxGalleryImageSizeInMB, maxFileCount: MaxGalleryBatchCount);

            // Check for validation errors
            var errors = validationResults.Where(r => !r.IsValid).ToList();
            if (errors.Any())
            {
                return BadRequest(new
                {
                    success = false,
                    message = "File validation failed",
                    errors = errors.Select(e => new { file = e.FileName, error = e.ErrorMessage }).ToList()
                });
            }

            var uploadedFiles = new List<object>();
            var failedFiles = new List<object>();

            Directory.CreateDirectory(_galleryImagePath);

            foreach (var file in files)
            {
                try
                {
                    var fileExtension = Path.GetExtension(file.FileName).ToLowerInvariant();
                    var fileName = $"{Guid.NewGuid()}{fileExtension}";
                    var filePath = Path.Combine(_galleryImagePath, fileName);

                    using (var stream = new FileStream(filePath, FileMode.Create))
                    {
                        await file.CopyToAsync(stream);
                    }

                    var relativePath = $"/assets/img/gallery/{fileName}";
                    uploadedFiles.Add(new
                    {
                        fileName = file.FileName,
                        url = relativePath,
                        size = file.Length
                    });
                }
                catch (Exception ex)
                {
                    failedFiles.Add(new
                    {
                        fileName = file.FileName,
                        error = ex.Message
                    });
                }
            }

            return Ok(new
            {
                success = uploadedFiles.Count > 0,
                totalFiles = files.Count,
                uploadedCount = uploadedFiles.Count,
                failedCount = failedFiles.Count,
                uploaded = uploadedFiles,
                failed = failedFiles
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new
            {
                success = false,
                error = "Upload batch failed",
                message = ex.Message
            });
        }
    }

    [HttpPost("pdf/{category}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> UploadPdf(IFormFile file, string category)
    {
        if (!TryResolveSafeUploadPath(category, out var categoryPath, out var relativeBase))
            return BadRequest("Invalid category");

        if (file == null || file.Length == 0)
            return BadRequest("No file uploaded");

        var fileExtension = Path.GetExtension(file.FileName).ToLower();

        if (fileExtension != ".pdf")
            return BadRequest("Only PDF files are allowed");

        // Validate file size (max 50MB for PDFs)
        if (file.Length > 50 * 1024 * 1024)
            return BadRequest("File size must not exceed 50MB");

        try
        {
            Directory.CreateDirectory(categoryPath);

            var fileName = $"{Guid.NewGuid()}.pdf";
            var filePath = Path.Combine(categoryPath, fileName);

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await file.CopyToAsync(stream);
            }

            var relativePath = $"{relativeBase}/{fileName}";
            return Ok(new { success = true, url = relativePath, fileName = fileName });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { error = ex.Message });
        }
    }

    [HttpPost("file/{category}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> UploadFile(IFormFile file, string category)
    {
        if (!TryResolveSafeUploadPath(category, out var categoryPath, out var relativeBase))
            return BadRequest("Invalid category");

        if (file == null || file.Length == 0)
            return BadRequest("No file uploaded");

        var allowedExtensions = new[] { ".pdf", ".doc", ".docx", ".xls", ".xlsx", ".zip", ".rar" };
        var fileExtension = Path.GetExtension(file.FileName).ToLower();

        if (!allowedExtensions.Contains(fileExtension))
            return BadRequest("Invalid file format");

        // Validate file size (max 50MB)
        if (file.Length > 50 * 1024 * 1024)
            return BadRequest("File size must not exceed 50MB");

        try
        {
            Directory.CreateDirectory(categoryPath);

            var fileName = $"{Guid.NewGuid()}{fileExtension}";
            var filePath = Path.Combine(categoryPath, fileName);

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await file.CopyToAsync(stream);
            }

            var relativePath = $"{relativeBase}/{fileName}";
            return Ok(new { success = true, url = relativePath, fileName = fileName });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { error = ex.Message });
        }
    }

    private bool TryResolveSafeUploadPath(string category, out string categoryPath, out string relativeBase)
    {
        categoryPath = string.Empty;
        relativeBase = string.Empty;

        if (string.IsNullOrWhiteSpace(category))
            return false;

        var trimmedCategory = category.Trim();

        if (trimmedCategory.IndexOfAny(Path.GetInvalidFileNameChars()) >= 0 ||
            trimmedCategory.Contains("..", StringComparison.Ordinal) ||
            trimmedCategory.Contains('/', StringComparison.Ordinal) ||
            trimmedCategory.Contains('\\', StringComparison.Ordinal))
        {
            return false;
        }

        var rootPath = Path.GetFullPath(_uploadPath);
        var candidatePath = Path.GetFullPath(Path.Combine(rootPath, trimmedCategory));
        var normalizedRoot = rootPath.TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar) + Path.DirectorySeparatorChar;

        if (!candidatePath.StartsWith(normalizedRoot, StringComparison.OrdinalIgnoreCase) &&
            !string.Equals(candidatePath, rootPath, StringComparison.OrdinalIgnoreCase))
        {
            return false;
        }

        categoryPath = candidatePath;
        relativeBase = $"/assets/uploads/{trimmedCategory}";
        return true;
    }

    [HttpDelete("{category}/{fileName}")]
    [Authorize(Roles = "Admin")]
    public IActionResult DeleteFile(string category, string fileName)
    {
        try
        {
            var filePath = Path.Combine(_uploadPath, category, fileName);

            if (!System.IO.File.Exists(filePath))
                return NotFound("File not found");

            System.IO.File.Delete(filePath);
            return Ok(new { success = true, message = "File deleted successfully" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { error = ex.Message });
        }
    }
}
