using IbuClubs.Api.Contracts.DTOs.Activity;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Domain.Interfaces;

public interface IActivityService
{
    Task<IEnumerable<Activity>> GetAllActivitiesAsync();
    Task<Activity> GetActivityByIdAsync(string id);
    Task CreateActivityAsync(CreateActivityDto clubDto);
    Task UpdateActivityAsync(string id, UpdateActivityDto clubDto);
    Task DeleteActivityAsync(string id);
}