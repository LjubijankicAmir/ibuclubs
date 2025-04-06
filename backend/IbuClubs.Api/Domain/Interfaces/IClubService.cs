using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Domain.Interfaces;

public interface IClubService
{
    Task<IEnumerable<Club>> GetAllClubsAsync();
    Task<Club> GetClubByIdAsync(string id);
    Task CreateClubAsync(CreateClubDto clubDto);
    Task UpdateClubAsync(string id, UpdateClubDto clubDto);
    Task DeleteClubAsync(string id);
}
