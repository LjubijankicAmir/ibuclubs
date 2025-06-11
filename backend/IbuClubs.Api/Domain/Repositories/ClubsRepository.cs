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
    
    public async Task<IEnumerable<Club>> GetApprovedAsync()
    {
        return await context.Clubs
            .Where(c => c.Status == ClubStatus.Approved)
            .ToListAsync();
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
        
        var currentCount = await context.Memberships.CountAsync(s => s.StudentId == studentGuid);
        if (currentCount == 3)
            throw new InvalidOperationException("You can not be enrolled in more than 3 clubs");
        
        
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

    public async Task<IEnumerable<Student>> GetEnrolledStudents(string clubId)
    {
        var clubGuid = Guid.Parse(clubId);
        var exists = await context.Clubs
            .AnyAsync(c => c.ClubId == clubGuid);
        if (!exists)
            throw new KeyNotFoundException($"Club with id {clubId} not found");

        var students = await context.Memberships
            .Where(m => m.ClubId == clubGuid)
            .Select(m => m.Student)
            .ToListAsync();

        return students;
    }

    public async Task LeaveClubAsync(string userId, string clubId)
    {
        var studentGuid = Guid.Parse(userId);
        var club = await context.Clubs.FindAsync(Guid.Parse(clubId));
        
        if (club == null) throw new KeyNotFoundException($"Club with id {clubId} not found");
        
        var membership = await context.Memberships.FindAsync(studentGuid, club.ClubId);
        
        if (membership == null) throw new KeyNotFoundException($"Membership with id {clubId} not found");
        
        context.Memberships.Remove(membership);
        await context.SaveChangesAsync();
    }

    public async Task<Club?> GetOwnedClubAsync(string userId)
    {
        var studentGuid = Guid.Parse(userId);

        var membership = await context.Memberships
            .Include(m => m.Club)
            .FirstOrDefaultAsync(m =>
                m.StudentId == studentGuid &&
                m.Role      == "Owner"
            );

        return membership?.Club;
    }


    public async Task<IEnumerable<Membership>> GetByUserIdAsync(string userId)
    {
        var userGuid = Guid.Parse(userId);
        return await context.Memberships
            .Where(m => m.StudentId == userGuid && m.Club.Status == ClubStatus.Approved)
            .Include(m => m.Club)
            .ToListAsync();
    }

    public async Task AddAsync(Club club)
    {
        await context.Clubs.AddAsync(club);
        await context.SaveChangesAsync();
    }

    public async Task AddWithOwnerAsync(Club club, Membership membership)
    {
        await context.Clubs.AddAsync(club);
        await context.Memberships.AddAsync(membership);
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
