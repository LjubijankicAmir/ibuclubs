using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Domain.Interfaces;

public interface IClubService
{
    Task<IEnumerable<Club>> GetAllClubsAsync();
    Task<IEnumerable<Club>> GetApprovedClubsAsync();
    Task<Club> GetClubByIdAsync(string id);
    Task EnrollUserAsync(string userId, string clubId);
    Task<IEnumerable<Student>> GetEnrolledStudentsAsync(string clubId);
    Task LeaveClubAsync(string userId, string clubId);
    Task<Club?> GetOwnedClubAsync(string userId);
    Task<IEnumerable<Membership>> GetByUserIdAsync(string userId);
    Task CreateClubAsync(CreateClubDto clubDto, string userId);
    Task CreateClubAsAdminAsync(CreateClubDto clubDto);
    Task ReviewClubAsync(string clubId, ClubStatus status);
    Task UpdateClubAsync(string id, UpdateClubDto clubDto);
    Task DeleteClubAsync(string id);
}
