using System.ComponentModel.DataAnnotations;

namespace IbuClubs.Api.Contracts.DTOs.Activity;

public class CreateActivityDto
{
    [StringLength(36)]
    public string ClubId { get; set; }
    
    [StringLength(100)]
    public string Name { get; set; }
    
    [StringLength(256)]
    public string Description { get; set; }
    
    public DateOnly Date { get; set; }
    
    public TimeOnly Time { get; set; }
    
    public int ActivityPoints { get; set; }
    
    public int MaxParticipants { get; set; }
}