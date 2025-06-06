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

    public Task UpdateAsync(Membership entity)
    {
        throw new NotImplementedException();
    }

    public Task DeleteAsync(string id)
    {
        throw new NotImplementedException();
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