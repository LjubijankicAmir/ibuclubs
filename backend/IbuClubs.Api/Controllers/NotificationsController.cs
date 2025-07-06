using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using IbuClubs.Api.Services;
using IbuClubs.Api.Contracts.DTOs.Notifications;

namespace IbuClubs.Api.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class NotificationsController(FcmService fcmService) : ControllerBase
    {
        [HttpPost("register")]
        [Authorize]
        public async Task<IActionResult> RegisterToken([FromBody] CreateFcmTokenDto dto)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId))
                return Unauthorized();

            await fcmService.RegisterTokenAsync(userId, dto.Token);

            return Ok(new { message = "FCM token registered" });
        }
        
        [HttpPost("send-test")]
        public async Task<IActionResult> SendTestNotification(
            [FromBody] NotificationTestDto dto,
            [FromServices] FcmService fcm)
        {
            await FcmService.SendNotificationAsync(dto.Token, "Test Title", "This is a test notification from local .NET backend.");
            return Ok(new { message = "Notification sent" });
        }


    }
}