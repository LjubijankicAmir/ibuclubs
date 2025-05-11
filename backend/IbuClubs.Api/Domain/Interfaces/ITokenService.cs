using Microsoft.AspNetCore.Identity;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Domain.Interfaces;

public interface ITokenService
{
    string GenerateAccessToken(IdentityUser user, IList<string> userRoles);
    RefreshToken GenerateRefreshToken(string ipAddress, string userId);
}