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