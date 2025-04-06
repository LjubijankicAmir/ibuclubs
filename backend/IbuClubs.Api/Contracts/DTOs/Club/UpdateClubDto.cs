using System.ComponentModel.DataAnnotations;

namespace IbuClubs.Api.Contracts.DTOs.Club;

public class UpdateClubDto
{
    [StringLength(50)]
    public string Name { get; set; }
    
    [StringLength(256)]
    public string Description { get; set; }
    
    [StringLength(100)]
    public string SocialMediaLink { get; set; }
    
}