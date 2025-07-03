using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace IbuClubs.Api.Services
{
    public class FcmService(IbuClubsDbContext context)
    {
        public async Task RegisterTokenAsync(string userId, string token)
        {
            var existing = await context.FcmTokens
                .Where(t => t.UserId == userId && t.Token == token)
                .FirstOrDefaultAsync();

            if (existing != null)
            {
                existing.CreatedAt = DateTime.UtcNow;
                context.FcmTokens.Update(existing);
            }
            else
            {
                await context.FcmTokens.AddAsync(new FcmToken
                {
                    Id        = Guid.NewGuid(),
                    UserId    = userId,
                    Token     = token,
                    CreatedAt = DateTime.UtcNow
                });
            }

            await context.SaveChangesAsync();
        }
    }
}