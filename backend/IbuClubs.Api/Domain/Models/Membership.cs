namespace IbuClubs.Api.Domain.Models;

public class Membership
{
    public int StudentId { get; set; }
    public Student Student { get; set; }

    public int ClubId { get; set; }
    public Club Club { get; set; }

    public string Role { get; set; }
}
