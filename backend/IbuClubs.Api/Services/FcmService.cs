using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Persistence.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using FirebaseAdmin.Messaging;
using Google.Apis.Auth.OAuth2;
using Newtonsoft.Json;

namespace IbuClubs.Api.Services
{
    public class FcmService(IbuClubsDbContext dbContext)
    {
        public async Task RegisterTokenAsync(string userId, string token)
        {
            var oldTokens = await dbContext.FcmTokens
                .Where(t => t.UserId == userId && t.Token != token)
                .ToListAsync();

            if (oldTokens.Count != 0)
                dbContext.FcmTokens.RemoveRange(oldTokens);

            var existing = await dbContext.FcmTokens
                .FirstOrDefaultAsync(t => t.UserId == userId && t.Token == token);

            if (existing != null)
            {
                existing.CreatedAt = DateTime.UtcNow;
                dbContext.FcmTokens.Update(existing);
            }
            else
            {
                await dbContext.FcmTokens.AddAsync(new FcmToken
                {
                    Id        = Guid.NewGuid(),
                    UserId    = userId,
                    Token     = token,
                    CreatedAt = DateTime.UtcNow
                });
            }

            await dbContext.SaveChangesAsync();
        }

        public async Task NotifyClubOwnerAsync(string clubId, string title, string body)
        {
            var owner = await dbContext.Memberships
                .Where(m => m.ClubId.ToString() == clubId && m.Role == "Owner")
                .FirstOrDefaultAsync();

            if (owner == null)
            {
                throw new KeyNotFoundException("Owner not found");
            }

            var ownerId = owner.StudentId.ToString();
            
            var token = await dbContext.FcmTokens
                .Where(t => t.UserId == ownerId)
                .Select(t => t.Token)
                .FirstOrDefaultAsync();

            if (token == null)
            {
                throw new KeyNotFoundException("Token not found");
            }
            
            await SendNotificationAsync(token, title, body);
        }
        
        public async Task NotifyClubMembersOfNewActivity(Guid clubId, string activityName)
        {
            var memberIds = await dbContext.Memberships
                .Where(m => m.ClubId == clubId && m.Role == "Member")
                .Select(m => m.StudentId.ToString())
                .Distinct()
                .ToListAsync();

            var tokens =  dbContext.FcmTokens
                .AsEnumerable()    
                .Where(t => memberIds.Contains(t.UserId))
                .Select(t => t.Token)
                .ToList();

            foreach (var token in tokens)
            {
                try
                {
                    await SendNotificationAsync(
                        token,
                        "New club activity posted",
                        $"A new activity \"{activityName}\" was added in your club"
                    );
                }
                catch
                {
                    // Skip this token on failure
                }
            }
        }

        
        
        public static async Task SendNotificationAsync(string token, string title, string body)
        {
            var message = new Message
            {
                Token = token,
                Notification = new Notification
                {
                    Title = title,
                    Body = body
                },
                Android = new AndroidConfig
                {
                    Notification = new AndroidNotification
                    {
                        ClickAction = "FLUTTER_NOTIFICATION_CLICK",
                        ChannelId = "high_importance_channel"
                    }
                }
            };

            var response = await FirebaseMessaging.DefaultInstance.SendAsync(message);
            Console.WriteLine("Notification sent: " + response);
        }
    }
}