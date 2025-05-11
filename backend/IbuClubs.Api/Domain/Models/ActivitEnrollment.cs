namespace IbuClubs.Api.Domain.Models;

public class ActivityEnrollment
{
    public Guid StudentId { get; set; }
    public Student Student { get; set; }

    public Guid ActivityId { get; set; }
    public Activity Activity { get; set; }

    public DateTime Timestamp { get; set; }
}
