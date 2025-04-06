namespace IbuClubs.Api.Domain.Models;

public class Activity
{
    public int ActivityId { get; set; }
    public int ClubId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public DateOnly Date { get; set; }
    public TimeOnly Time { get; set; }
    public int ActivityPoints { get; set; }
    public int MaxParticipants { get; set; }

    public Club Club { get; set; }
    public ICollection<ActivityEnrollment> ActivityEnrollments { get; set; }
}