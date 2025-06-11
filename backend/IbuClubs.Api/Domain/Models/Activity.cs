using System.ComponentModel.DataAnnotations.Schema;

namespace IbuClubs.Api.Domain.Models;

public class Activity
{
    [Column("activity_id")]
    public Guid ActivityId { get; set; }
    [Column("club_id")]
    public Guid ClubId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public DateOnly Date { get; set; }
    public TimeOnly Time { get; set; }
    [Column("activity_points")]
    public int ActivityPoints { get; set; }
    [Column("max_participants")]
    public int MaxParticipants { get; set; }

    public Club Club { get; set; }
    [NotMapped]
    public bool isEnrolled { get; set; }
    public ICollection<ActivityEnrollment> ActivityEnrollments { get; set; }
}