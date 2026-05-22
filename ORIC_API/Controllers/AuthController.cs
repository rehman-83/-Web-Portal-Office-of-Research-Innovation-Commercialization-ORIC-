using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ORIC_API.Data;
using ORIC_API.DTOs.Auth;
using ORIC_API.Services;

namespace ORIC_API.Controllers;

[ApiController]
[Route("api/auth")]
public class AuthController : ControllerBase
{
    private readonly ApplicationDbContext _dbContext;
    private readonly JwtTokenService _jwtTokenService;

    public AuthController(ApplicationDbContext dbContext, JwtTokenService jwtTokenService)
    {
        _dbContext = dbContext;
        _jwtTokenService = jwtTokenService;
    }

    [HttpPost("login")]
    public async Task<ActionResult<LoginResponseDto>> Login([FromBody] LoginRequestDto request)
    {
        var username = request.Username.Trim();
        var user = await _dbContext.AdminUsers.FirstOrDefaultAsync(x => x.Username == username);

        if (user is null || !user.IsActive)
        {
            return Unauthorized("Invalid username or password.");
        }

        var passwordOk = BCrypt.Net.BCrypt.Verify(request.Password, user.PasswordHash);
        if (!passwordOk)
        {
            return Unauthorized("Invalid username or password.");
        }

        var (token, expiresAt) = _jwtTokenService.GenerateToken(user);

        return Ok(new LoginResponseDto
        {
            Token = token,
            ExpiresAtUtc = expiresAt,
            Username = user.Username,
            FullName = user.FullName,
            Role = user.Role
        });
    }
}
