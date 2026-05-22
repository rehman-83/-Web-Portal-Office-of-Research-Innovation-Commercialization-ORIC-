using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace ORIC_API.Services;

/// <summary>
/// Service for validating uploaded files for security vulnerabilities
/// </summary>
public class FileValidationService
{
    /// <summary>
    /// Magic numbers (file signatures) for common image formats
    /// </summary>
    private static readonly Dictionary<string, byte[][]> ImageMagicNumbers = new()
    {
        { ".jpg", new[] { new byte[] { 0xFF, 0xD8, 0xFF } } },
        { ".jpeg", new[] { new byte[] { 0xFF, 0xD8, 0xFF } } },
        { ".png", new[] { new byte[] { 0x89, 0x50, 0x4E, 0x47 } } },
        { ".gif", new[] { new byte[] { 0x47, 0x49, 0x46 } } },
        { ".webp", new[] { new byte[] { 0x52, 0x49, 0x46, 0x46 } } }
    };

    /// <summary>
    /// Validates a single image file
    /// </summary>
    public ValidationResult ValidateImageFile(IFormFile file, int maxSizeInMB = 5)
    {
        if (file == null || file.Length == 0)
            return new ValidationResult { IsValid = false, ErrorMessage = "No file provided" };

        // Check file extension
        var fileExtension = Path.GetExtension(file.FileName).ToLower();
        var allowedExtensions = new[] { ".jpg", ".jpeg", ".png", ".gif", ".webp" };

        if (!allowedExtensions.Contains(fileExtension))
            return new ValidationResult
            {
                IsValid = false,
                ErrorMessage = $"Invalid image format '{fileExtension}'. Allowed: jpg, jpeg, png, gif, webp"
            };

        // Check file size
        var maxSizeInBytes = maxSizeInMB * 1024 * 1024;
        if (file.Length > maxSizeInBytes)
            return new ValidationResult
            {
                IsValid = false,
                ErrorMessage = $"File size {FormatBytes(file.Length)} exceeds {maxSizeInMB}MB limit"
            };

        // Check MIME type
        if (!IsValidImageMimeType(file.ContentType))
            return new ValidationResult
            {
                IsValid = false,
                ErrorMessage = $"Invalid MIME type: {file.ContentType}"
            };

        // Check magic numbers (file signature)
        if (!HasValidMagicNumber(file, fileExtension))
            return new ValidationResult
            {
                IsValid = false,
                ErrorMessage = "File signature doesn't match the extension. File may be corrupted or malicious."
            };

        return new ValidationResult { IsValid = true };
    }

    /// <summary>
    /// Validates multiple image files
    /// </summary>
    public List<FileValidationResultWithFile> ValidateMultipleImageFiles(IFormFileCollection files, int maxSizeInMB = 5, int maxFileCount = 20)
    {
        var results = new List<FileValidationResultWithFile>();

        // Check total file count
        if (files.Count > maxFileCount)
        {
            results.Add(new FileValidationResultWithFile
            {
                FileName = "batch",
                IsValid = false,
                ErrorMessage = $"Cannot upload more than {maxFileCount} files at once. You provided {files.Count} files."
            });
            return results;
        }

        foreach (var file in files)
        {
            var validation = ValidateImageFile(file, maxSizeInMB);
            results.Add(new FileValidationResultWithFile
            {
                FileName = file.FileName,
                IsValid = validation.IsValid,
                ErrorMessage = validation.ErrorMessage
            });
        }

        return results;
    }

    /// <summary>
    /// Checks if MIME type is a valid image format
    /// </summary>
    private static bool IsValidImageMimeType(string mimeType)
    {
        if (string.IsNullOrEmpty(mimeType))
            return false;

        var validMimeTypes = new[]
        {
            "image/jpeg",
            "image/png",
            "image/gif",
            "image/webp",
            "image/x-png" // Alternative MIME type for PNG
        };

        return validMimeTypes.Contains(mimeType.ToLower());
    }

    /// <summary>
    /// Validates file magic numbers to ensure file type matches extension
    /// </summary>
    private static bool HasValidMagicNumber(IFormFile file, string fileExtension)
    {
        try
        {
            if (!ImageMagicNumbers.ContainsKey(fileExtension))
                return false;

            var magicNumbers = ImageMagicNumbers[fileExtension];
            var buffer = new byte[512]; // Read first 512 bytes

            file.OpenReadStream().Read(buffer, 0, buffer.Length);

            // Check if file starts with any of the valid magic numbers
            foreach (var magicNumber in magicNumbers)
            {
                if (buffer.Take(magicNumber.Length).SequenceEqual(magicNumber))
                    return true;
            }

            return false;
        }
        catch
        {
            return false;
        }
    }

    /// <summary>
    /// Sanitizes filename to prevent directory traversal and other attacks
    /// </summary>
    public static string SanitizeFileName(string fileName)
    {
        // Remove path separators and null characters
        var sanitized = fileName.Replace("\\", "")
                                .Replace("/", "")
                                .Replace("\0", "")
                                .Replace("..", "");

        // Remove any special characters except dots and hyphens
        sanitized = System.Text.RegularExpressions.Regex.Replace(sanitized, "[^a-zA-Z0-9._-]", "");

        return sanitized;
    }

    /// <summary>
    /// Formats bytes to human readable format
    /// </summary>
    private static string FormatBytes(long bytes)
    {
        string[] sizes = { "B", "KB", "MB", "GB" };
        double len = bytes;
        int order = 0;
        while (len >= 1024 && order < sizes.Length - 1)
        {
            order++;
            len = len / 1024;
        }
        return $"{len:0.##} {sizes[order]}";
    }
}

/// <summary>
/// Validation result for a single file
/// </summary>
public class ValidationResult
{
    public bool IsValid { get; set; }
    public string? ErrorMessage { get; set; }
}

/// <summary>
/// Validation result for a file with filename
/// </summary>
public class FileValidationResultWithFile
{
    public string FileName { get; set; } = string.Empty;
    public bool IsValid { get; set; }
    public string? ErrorMessage { get; set; }
}
