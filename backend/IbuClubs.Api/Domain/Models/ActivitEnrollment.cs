namespace IbuClubs.Api.Domain.Models;

public class ActivityEnrollment
{
    public int StudentId { get; set; }
    public Student Student { get; set; }

    public int ActivityId { get; set; }
    public Activity Activity { get; set; }

    public DateTime Timestamp { get; set; }
}
