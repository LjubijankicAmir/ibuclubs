using System.Security.Claims;
using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.IdentityModel.JsonWebTokens;

namespace IbuClubs.Api.Controllers;

using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("api/[controller]/[action]")]
public class ClubController(IClubService _clubService, IMapper _mapper) : ControllerBase
{
    [HttpGet]
    public async Task<IActionResult> GetAllClubs()
    {
        try
        {
            var clubs = await _clubService.GetAllClubsAsync();
            if (clubs == null)
            {
                return NoContent();
            }
            return Ok(clubs);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetClubById(string id)
    {
        try
        {
            var club = await _clubService.GetClubByIdAsync(id);
            if (club == null)
            {
                return NotFound();
            }
            return Ok(club);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        } 
    }

    [HttpGet()]
    [Authorize]
    public async Task<IActionResult> GetMyClubs()
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();

            var clubs = await _clubService.GetByUserIdAsync(userId);
            return Ok(clubs);
        }
        catch
        {
            return StatusCode(500, "Internal server error");
        }
    }

    [HttpPost]
    public async Task<IActionResult> CreateClub(CreateClubDto clubDto)
    {
        try
        {
            await _clubService.CreateClubAsync(clubDto);
            return Ok(new { message = "Club created successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPost("{id}")]
    [Authorize]
    public async Task<IActionResult> Enroll(string id)
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();

            await _clubService.EnrollUserAsync(userId, id);

            return Ok("Enrolled successfully!");
        }
        catch (KeyNotFoundException keyException)
        {
            return NotFound(keyException.Message);
        }
        catch (InvalidOperationException invalidOperationException)
        {
            return BadRequest(invalidOperationException.Message);
        }
        catch (Exception exception)
        {
            return StatusCode(500, $"Internal server error: {exception.Message}");
        }
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> UpdateClub(string id, UpdateClubDto clubDto)
    {
        try
        {
            var club = await _clubService.GetClubByIdAsync(id);
            if (club == null)
            {
                return NotFound();
            }
            await _clubService.UpdateClubAsync(id, clubDto);
            return Ok(new { message = "Club updated successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteClub(string id)
    {
        try
        {
            var club = await _clubService.GetClubByIdAsync(id);
            if (club == null)
            {
                return NotFound();
            }
            await _clubService.DeleteClubAsync(id);
            return Ok(new { message = "Club deleted successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }
}
