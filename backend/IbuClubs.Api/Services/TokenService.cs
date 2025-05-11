using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using IbuClubs.Api.Domain.Interfaces;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Identity;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;

namespace IbuClubs.Api.Services;

public class TokenService : ITokenService
{
    private readonly JwtSettings      _jwtSettings;
    private readonly IbuClubsDbContext _db;
    private readonly UserManager<IdentityUser> _userManager;

    public TokenService(
        IOptions<JwtSettings>      jwtOptions,
        IbuClubsDbContext          db,
        UserManager<IdentityUser>  userManager)
    {
        _jwtSettings   = jwtOptions.Value;
        _db            = db;
        _userManager   = userManager;
    }

    public string GenerateAccessToken(IdentityUser user, IList<string> userRoles)
    {
        var authClaims = new List<Claim>
        {
            new Claim(JwtRegisteredClaimNames.Sub, user.Id),
            new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
            new Claim(ClaimTypes.Name, user.UserName!)
        };

        authClaims.AddRange(userRoles.Select(r => new Claim(ClaimTypes.Role, r)));

        var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.SecretKey));
        var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

        var token = new JwtSecurityToken(
            issuer:            _jwtSettings.Issuer,
            audience:          _jwtSettings.Audience,
            claims:            authClaims,
            expires:           DateTime.UtcNow.AddMinutes(_jwtSettings.AccessTokenExpirationMinutes),
            signingCredentials: creds
        );

        return new JwtSecurityTokenHandler().WriteToken(token);
    }

    public RefreshToken GenerateRefreshToken(string ipAddress, string userId)
    {
        var refresh = new RefreshToken
        {
            Token       = Convert.ToBase64String(RandomNumberGenerator.GetBytes(64)),
            Expires     = DateTime.UtcNow.AddDays(_jwtSettings.RefreshTokenExpirationDays),
            Created     = DateTime.UtcNow,
            CreatedByIp = ipAddress,
            UserId      = userId
        };

        _db.RefreshTokens.Add(refresh);
        _db.SaveChanges();

        return refresh;
    }
}
