using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using Microsoft.EntityFrameworkCore;

namespace IbuClubs.Api.Domain.Repositories;

public class ActivityRepository(IbuClubsDbContext context) : IRepository<Activity>
{
    public async Task<Activity> GetByIdAsync(string id)
    {
        return await context.Activities.FindAsync(Guid.Parse(id));
    }

    public async Task<IEnumerable<Activity>> GetAllAsync()
    {
        return await context.Activities.ToListAsync();
    }

    public async Task AddAsync(Activity activity)
    {
        await context.Activities.AddAsync(activity);
        await context.SaveChangesAsync();
    }
    
    public async Task<IEnumerable<Activity>> GetUpcomingForUserAsync(string userId)
    {
        var studentGuid = Guid.Parse(userId);
        var today= DateOnly.FromDateTime(DateTime.UtcNow);

        var activities =  await context.Activities
            .Where(a =>
                a.Date >= today &&
                context.Memberships.Any(m =>
                    m.StudentId == studentGuid &&
                    m.ClubId    == a.ClubId))
            .Include(a => a.ActivityEnrollments)
            .OrderBy(a => a.Date)
            .ThenBy(a => a.Time)
            .ToListAsync();

        foreach (var activity in activities)
        {
            activity.isEnrolled = activity.ActivityEnrollments.Any(e => e.StudentId == studentGuid);
        }
        
        return activities;
    }

    public async Task EnrollUserAsync(string userId, string activityId)
    {
        var studentGuid = Guid.Parse(userId);
        var activityGuid = Guid.Parse(activityId);
        var activity = await context.Activities.FindAsync(Guid.Parse(activityId));
        
        if (activity == null)
            throw new KeyNotFoundException($"Activity with id {activityId} not found");
        
        var currentCount = await context.ActivityEnrollments.CountAsync(a => a.ActivityId == activityGuid);
        
        if (currentCount == activity.MaxParticipants)
            throw new InvalidOperationException("This activity already has maximum number of participants");
        

        context.ActivityEnrollments.Add(new ActivityEnrollment
        {
            StudentId = studentGuid,
            ActivityId = activityGuid,
        });
        
        await context.SaveChangesAsync();
    }

    public async Task UpdateAsync(Activity entity)
    {
        context.Activities.Update(entity);
        await context.SaveChangesAsync();
    }

    public async Task DeleteAsync(string id)
    {
        var activity = await context.Activities.FindAsync(Guid.Parse(id));
        if (activity != null)
        {
            context.Activities.Remove(activity);
            await context.SaveChangesAsync();
        }
    }
}