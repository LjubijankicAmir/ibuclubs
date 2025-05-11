using IbuClubs.Api.Contracts.DTOs.Auth;
using IbuClubs.Api.Domain.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using IbuClubs.Api.Contracts.DTOs.Auth;
using RefreshRequest = Microsoft.AspNetCore.Identity.Data.RefreshRequest;

namespace IbuClubs.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class AuthController : ControllerBase
{
    private readonly ITokenService       _tokenService;
    private readonly UserManager<IdentityUser> _userManager;
    private readonly IbuClubsDbContext  _db;

    public AuthController(
        ITokenService       tokenService,
        UserManager<IdentityUser> userManager,
        IbuClubsDbContext  db)
    {
        _tokenService = tokenService;
        _userManager  = userManager;
        _db           = db;
    }

    [HttpPost("login")]
    public async Task<IActionResult> Login([FromBody] LoginRequest dto)
    {
        var user = await _userManager.FindByEmailAsync(dto.Email);
        if (user == null || !await _userManager.CheckPasswordAsync(user, dto.Password))
            return Unauthorized(new { message = "Invalid credentials" });

        var roles = await _userManager.GetRolesAsync(user);
        var jwt   = _tokenService.GenerateAccessToken(user, roles);
        var refresh = _tokenService.GenerateRefreshToken(
            HttpContext.Connection.RemoteIpAddress?.ToString() ?? "unknown",
            user.Id);

        return Ok(new AuthResponse(AccessToken: jwt, RefreshToken: refresh.Token));
    }

    [HttpPost("refresh")]
    public IActionResult Refresh([FromBody] RefreshRequest dto)
    {
        var stored = _db.RefreshTokens
            .SingleOrDefault(rt => rt.Token == dto.RefreshToken);

        if (stored is not { IsActive: true })
            return Unauthorized(new { message = "Invalid refresh token" });


        var user = _userManager.Users.Single(u => u.Id == stored.UserId);
        var roles = _userManager.GetRolesAsync(user).Result;

        var newJwt     = _tokenService.GenerateAccessToken(user, roles);
        var newRefresh = _tokenService.GenerateRefreshToken(
            HttpContext.Connection.RemoteIpAddress?.ToString() ?? "unknown",
            user.Id);

        stored.Revoked = DateTime.UtcNow;
        stored.RevokedByIp = HttpContext.Connection.RemoteIpAddress?.ToString();
        stored.ReplacedByToken = newRefresh.Token;
        _db.SaveChanges();

        return Ok(new AuthResponse(AccessToken: newJwt, RefreshToken: newRefresh.Token));
    }

    [HttpPost("logout")]
    public IActionResult Logout([FromBody] RefreshRequest dto)
    {
        var stored = _db.RefreshTokens
            .SingleOrDefault(rt => rt.Token == dto.RefreshToken);

        if (stored is not { IsActive: true })
            return BadRequest(new { message = "Invalid token" });

        stored.Revoked = DateTime.UtcNow;
        stored.RevokedByIp = HttpContext.Connection.RemoteIpAddress?.ToString();
        _db.SaveChanges();

        return NoContent();
    }
}
