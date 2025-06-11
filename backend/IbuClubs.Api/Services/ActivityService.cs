using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Activity;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Domain.Repositories;

namespace IbuClubs.Api.Services;

public class ActivityService : IActivityService
{
    private readonly IMapper _mapper;
    private readonly ActivityRepository _repository;

    public ActivityService(IMapper mapper, ActivityRepository repository)
    {
        _mapper = mapper;
        _repository = repository;
    }
    
    public async Task<IEnumerable<Activity>> GetAllActivitiesAsync()
    {
        var activities = await _repository.GetAllAsync();
        return activities;
    }

    public async Task EnrollUserAsync(string userId, string clubId)
    {
        await _repository.EnrollUserAsync(userId, clubId);
    }

    public async Task<IEnumerable<Activity>> GetUpcomingActivitiesAsync(string userId)
    {
        return await _repository.GetUpcomingForUserAsync(userId);
    }

    public async Task<Activity> GetActivityByIdAsync(string id)
    {
        var activity = await _repository.GetByIdAsync(id);
        return activity;
    }

    public async Task CreateActivityAsync(CreateActivityDto activityDto)
    {
        var activity = _mapper.Map<CreateActivityDto, Activity>(activityDto);
        activity.ActivityId = Guid.NewGuid();
        activity.ClubId = Guid.Parse(activityDto.ClubId);
        await _repository.AddAsync(activity);
    }

    public async Task UpdateActivityAsync(string id, UpdateActivityDto activityDto)
    {
        var activity = await _repository.GetByIdAsync(id);
        _mapper.Map(activityDto, activity);
        await _repository.UpdateAsync(activity);
    }

    public async Task DeleteActivityAsync(string id)
    {
        await _repository.DeleteAsync(id);
    }
}