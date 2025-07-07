using System.Security.Claims;
using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Domain.Repositories;
using IbuClubs.Api.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.IdentityModel.JsonWebTokens;

namespace IbuClubs.Api.Controllers;

using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("api/[controller]/[action]")]
public class ClubController(IClubService _clubService,FcmService _fcmService , IMapper _mapper, MembershipRepository _membershipRepository) : ControllerBase
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

    [HttpGet]
    public async Task<IActionResult> GetApprovedClubs()
    {
        try
        {
            var clubs = await _clubService.GetApprovedClubsAsync();
            if (!clubs.Any())
                return NoContent();
            
            return Ok(clubs);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }
    
    [HttpGet("{id}")]
    [Authorize]
    public async Task<IActionResult> GetClubById(string id)
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId))
                return Unauthorized();

            var club = await _clubService.GetClubByIdAsync(id);
            if (club == null)
                return NotFound();

            var studentGuid = Guid.Parse(userId);
            var clubGuid    = Guid.Parse(id);

            var isEnrolled = await _membershipRepository
                .GetByUserAndClubAsync(studentGuid, clubGuid) != null;
            
            var totalMembers = await _membershipRepository.CountByClubAsync(clubGuid);

            var dto = new ClubDetailsDto
            {
                ClubId          = club.ClubId,
                Name            = club.Name,
                Description     = club.Description,
                SocialMediaLink = club.SocialMediaLink,
                Status          = club.Status,
                MembershipCount = totalMembers,
                IsEnrolled      = isEnrolled
            };

            return Ok(dto);
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
    [Authorize]
    public async Task<IActionResult> CreateClub(CreateClubDto clubDto)
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var userRole = User.FindFirstValue(ClaimTypes.Role);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();
            await _clubService.CreateClubAsync(clubDto, userId);
            return Ok(new { message = "Club created successfully!" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPost]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> CreateClubAdmin(CreateClubDto clubDto)
    {
        try
        {
            await _clubService.CreateClubAsAdminAsync(clubDto);
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
            return BadRequest(new {error = invalidOperationException.Message});
        }
        catch (Exception exception)
        {
            return StatusCode(500, $"Internal server error: {exception.Message}");
        }
    }

    [HttpPost("{id}")]
    [Authorize]
    public async Task<IActionResult> Leave(string id)
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();

            await _clubService.LeaveClubAsync(userId, id);
            return Ok("Left the club successfully!");
        }
        catch (KeyNotFoundException keyException)
        {
            return NotFound(keyException.Message);
        }
        catch (Exception exception)
        {
            return StatusCode(500, $"Internal server error: {exception.Message}");
        }
    }

    [HttpPost("{id}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> Review(string id, [FromBody] ReviewClubDto dto)
    {
        try
        {
            await _clubService.ReviewClubAsync(id, dto.status);
            await _fcmService.NotifyClubOwnerAsync(id, "Club reviewed", "Your club has been reviewed by the administation");
            return Ok($"Club marked as {dto.status}");
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

    [HttpGet("{id}")]
    [Authorize]
    public async Task<IActionResult> GetMembersWithRoles(string id)
    {
        try
        {
            var userIdClaim = User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            if (userIdClaim is null)
                return Unauthorized("Unauthorized");
            var members = await _clubService.GetClubMembers(clubId: id);
            var filtered = members.Where(m => m.StudentId.ToString() != userIdClaim).ToList();
            return Ok(filtered);
        }
        catch (KeyNotFoundException keyException)
        {
            return NotFound(keyException.Message);
        }
        catch (Exception exception)
        {
            return StatusCode(500, $"Internal server error: {exception.Message}");
        }
    }
    
    [HttpGet("{id}")]
    [Authorize(Roles = "Admin")]
    public async Task<IActionResult> GetMembers(string id)
    {
        try
        {
            var members = await _clubService.GetEnrolledStudentsAsync(clubId: id);
            return Ok(members);
        }
        catch (KeyNotFoundException keyException)
        {
            return NotFound(keyException.Message);
        }
        catch (Exception exception)
        {
            return StatusCode(500, $"Internal server error: {exception.Message}");
        }
    }

    [HttpGet]
    [Authorize]
    public async Task<IActionResult> GetOwnedClub()
    {
        try
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId)) return Unauthorized();

            var club = await _clubService.GetOwnedClubAsync(userId);
            return Ok(club);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
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
