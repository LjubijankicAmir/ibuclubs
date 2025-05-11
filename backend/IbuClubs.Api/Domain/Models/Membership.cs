namespace IbuClubs.Api.Domain.Models;

public class Membership
{
    public Guid StudentId { get; set; }
    public Student Student { get; set; }

    public Guid ClubId { get; set; }
    public Club Club { get; set; }

    public string Role { get; set; }
}
