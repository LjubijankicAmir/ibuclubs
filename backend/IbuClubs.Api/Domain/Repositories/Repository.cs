using Microsoft.EntityFrameworkCore;

using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Persistence.Data;

namespace IbuClubs.Api.Domain.Repositories
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private readonly IbuClubsDbContext _context;
        private readonly DbSet<T> _dbSet;

        public Repository(IbuClubsDbContext context) 
        { 
            _context = context;
            _dbSet = _context.Set<T>();
        }

        public async Task<T> GetByIdAsync(string id)
        {
            return await _dbSet.FindAsync(Guid.Parse(id));
        }

        public async Task AddAsync(T entity)
        {
            await _dbSet.AddAsync(entity);
            await _context.SaveChangesAsync();
        }

        public async Task<IEnumerable<T>> GetAllAsync()
        {
            return await _dbSet.ToListAsync();
        }

        public async Task UpdateAsync(T entity)
        {
            _dbSet.Update(entity);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(string id)
        {
            var entity = await _dbSet.FindAsync(Guid.Parse(id));
            _dbSet.Remove(entity);
            await _context.SaveChangesAsync();
        }
    }
}