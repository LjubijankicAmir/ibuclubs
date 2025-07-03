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
    }
}