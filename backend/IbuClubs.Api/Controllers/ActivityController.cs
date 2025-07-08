using System.Security.Claims;
using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Activity;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Services;
using Microsoft.AspNetCore.Authorization;

namespace IbuClubs.Api.Controllers;

using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("api/[controller]/[action]")]
public class ActivityController(IActivityService _activityService, FcmService _fcmService, IMapper _mapper) : ControllerBase
{
    [HttpGet]
    public async Task<IActionResult> GetAllActivities()
    {
        try
        {
            var activities = await _activityService.GetAllActivitiesAsync();
            if (activities == null)
            {
                return NoContent();
            }
            return Ok(activities);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpGet]
    [Authorize]
    public async Task<IActionResult> GetUpcomingActivities()
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();

            var upcomingActivities = await _activityService.GetUpcomingActivitiesAsync(userId);
            return Ok(upcomingActivities);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpGet]
    [Authorize]
    public async Task<IActionResult> GetPastClubActivities(string clubId)
    {
        try
        {
            var pastActivities = await _activityService.GetPastClubActivitiesAsync(clubId);
            return Ok(pastActivities);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPost]
    [Authorize]
    public async Task<IActionResult> Enroll(string activityId)
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();

            await _activityService.EnrollUserAsync(userId, activityId);

            return Ok("Enrolled successfully");
        }
        catch (KeyNotFoundException keyNotFoundException)
        {
            return NotFound(keyNotFoundException.Message);
        }
        catch (InvalidOperationException invalidOperationException)
        {
            return BadRequest(new { error = invalidOperationException.Message });
        }
        catch (Exception exception)
        {
            return StatusCode(500, $"Internal server error: {exception.Message}");
        }
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetActivityById(string id)
    {
        try
        {
            var activity = await _activityService.GetActivityByIdAsync(id);
            if (activity == null)
            {
                return NotFound();
            }
            return Ok(activity);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPost]
    public async Task<IActionResult> CreateActivity(CreateActivityDto activityDto)
    {
        try
        {
            await _activityService.CreateActivityAsync(activityDto);
            await _fcmService.NotifyClubMembersOfNewActivity(Guid.Parse(activityDto.ClubId), activityDto.Name);
            return Ok(new { message = "activity created successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> UpdateActivity(string id, UpdateActivityDto activityDto)
    {
        try
        {
            var activity = await _activityService.GetActivityByIdAsync(id);
            if (activity == null)
            {
                return NotFound();
            }
            await _activityService.UpdateActivityAsync(id, activityDto);
            return Ok(new { message = "activity updated successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteActivity(string id)
    {
        try
        {
            var activity = await _activityService.GetActivityByIdAsync(id);
            if (activity == null)
            {
                return NotFound();
            }
            await _activityService.DeleteActivityAsync(id);
            return Ok(new { message = "activity deleted successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }
}
