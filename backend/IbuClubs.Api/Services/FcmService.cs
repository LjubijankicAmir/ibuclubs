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
                        ClickAction = "FLUTTER_NOTIFICATION_CLICK"
                    }
                }
            };

            var response = await FirebaseMessaging.DefaultInstance.SendAsync(message);
            Console.WriteLine("Notification sent: " + response);
        }
    }
}