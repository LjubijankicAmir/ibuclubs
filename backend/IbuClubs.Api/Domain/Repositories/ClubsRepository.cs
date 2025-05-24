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

    public async Task EnrollUserAsync(string userId, string clubId)
    {
        var studentGuid = Guid.Parse(userId);
        var clubGuid = Guid.Parse(clubId);
        var club = await context.Clubs.FindAsync(Guid.Parse(clubId));
        
        if (club == null)
            throw new KeyNotFoundException($"Club with id {clubId} not found");
        
        
        var alreadyEnrolled = await context.Memberships.AnyAsync(m => m.StudentId == studentGuid && m.ClubId == clubGuid);
        if (alreadyEnrolled) throw new InvalidOperationException("Already enrolled");

        context.Memberships.Add(new Membership
        {
            StudentId = studentGuid,
            ClubId = clubGuid,
            Role = "Member"
        });
        
        await context.SaveChangesAsync();
    }

    public async Task<IEnumerable<Club>> GetByUserIdAsync(string userId)
    {
        var userGuid = Guid.Parse(userId);
        return await context.Memberships
            .Where(m => m.StudentId == userGuid)
            .Include(m => m.Club)
            .Select(m => m.Club)
            .ToListAsync();
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
