using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using Microsoft.EntityFrameworkCore;

namespace IbuClubs.Api.Domain.Repositories;

public class StudentRepository(IbuClubsDbContext context) : IRepository<Student>
{
    public async Task<Student> GetByIdAsync(string id)
    {
        return await context.Students.FindAsync(Guid.Parse(id));
    }

    public async Task<IEnumerable<Student>> GetAllAsync()
    {
        return await context.Students.ToListAsync();
    }

    public async Task AddAsync(Student entity)
    {
        await context.Students.AddAsync(entity);
        await context.SaveChangesAsync();
    }

    public async Task UpdateAsync(Student entity)
    {
        context.Students.Update(entity);
        await context.SaveChangesAsync();
    }

    public async Task DeleteAsync(string id)
    {
        var student = await context.Students.FindAsync(Guid.Parse(id));
        if (student != null)
        {
            context.Students.Remove(student);
            await context.SaveChangesAsync();
        }
    }
}