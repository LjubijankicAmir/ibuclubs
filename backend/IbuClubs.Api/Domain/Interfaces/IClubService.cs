using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Domain.Interfaces;

public interface IClubService
{
    Task<IEnumerable<Club>> GetAllClubsAsync();
    Task<Club> GetClubByIdAsync(string id);
    
    Task EnrollUserAsync(string userId, string clubId);
    
    Task<IEnumerable<Club>> GetByUserIdAsync(string userId);
    Task CreateClubAsync(CreateClubDto clubDto, string userId);
    Task ReviewClubAsync(string clubId, ClubStatus status);
    Task UpdateClubAsync(string id, UpdateClubDto clubDto);
    Task DeleteClubAsync(string id);
}
