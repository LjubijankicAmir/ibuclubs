using System.ComponentModel.DataAnnotations.Schema;

namespace IbuClubs.Api.Domain.Models
{
    public enum ClubStatus { Pending, Approved, Rejected}
    public class Club
    {
        [Column("club_id")] public Guid ClubId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        [Column("social_media_link")] public string? SocialMediaLink { get; set; }
        
        public ClubStatus Status { get; set; } = ClubStatus.Pending;

        public ICollection<Activity> Activities { get; set; }
    }
}
