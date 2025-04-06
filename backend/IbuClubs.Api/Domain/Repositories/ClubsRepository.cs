using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using Microsoft.EntityFrameworkCore;

namespace IbuClubs.Api.Domain.Repositories;

public class ClubRepository(IbuClubsDbContext context) : IRepository<Club>
{
    public async Task<IEnumerable<Club>> GetAllAsync()
    {
        return await context.Clubs.ToListAsync();
    }

    public async Task<Club> GetByIdAsync(string id)
    {
        return await context.Clubs.FindAsync(Guid.Parse(id));
    }

    public async Task AddAsync(Club club)
    {
        await context.Clubs.AddAsync(club);
        await context.SaveChangesAsync();
    }

    public async Task UpdateAsync(Club club)
    {
        context.Clubs.Update(club);
        await context.SaveChangesAsync();
    }

    public async Task DeleteAsync(string id)
    {
        var club = await context.Clubs.FindAsync(Guid.Parse(id));
        if (club != null)
        {
            context.Clubs.Remove(club);
            await context.SaveChangesAsync();
        }
    }
}
