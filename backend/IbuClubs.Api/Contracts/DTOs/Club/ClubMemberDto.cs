namespace IbuClubs.Api.Contracts.DTOs.Club;

public class ClubMemberDto
{
    public Guid StudentId { get; set; }
    public string Name { get; set; }  
    public string Surname { get; set; }
    public string Email { get; set; }
    public string Role { get; set; }
}
