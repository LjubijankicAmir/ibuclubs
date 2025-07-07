using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using Microsoft.EntityFrameworkCore;

namespace IbuClubs.Api.Domain.Repositories;

public class MembershipRepository(IbuClubsDbContext context) : IRepository<Membership>
{
    public Task<Membership> GetByIdAsync(string id)
    {
        throw new NotImplementedException();
    }

    public Task<IEnumerable<Membership>> GetAllAsync()
    {
        throw new NotImplementedException();
    }

    public async Task AddAsync(Membership entity)
    {
        await context.Memberships.AddAsync(entity);
        await context.SaveChangesAsync();
    }

    public async Task UpdateAsync(Membership entity)
    {
        context.Memberships.Update(entity);
        await context.SaveChangesAsync();
    }

    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
    }

    public async Task KickMember(string studentId, string clubId)
    {
        var membership = await context.Memberships.Where(m => m.StudentId == Guid.Parse(studentId)).FirstOrDefaultAsync();
        if (membership != null)
        {
            context.Memberships.Remove(membership);
            await context.SaveChangesAsync();
        }
    }
    
    public async Task<Membership?> GetByUserAndClubAsync(Guid studentId, Guid clubId)
    {
        return await context.Memberships
            .SingleOrDefaultAsync(m => m.StudentId == studentId && m.ClubId == clubId);
    }
    
    public async Task<int> CountByClubAsync(Guid clubId)
    {
        return await context.Memberships
            .CountAsync(m => m.ClubId == clubId);
    }
}