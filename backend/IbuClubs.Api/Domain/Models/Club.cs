using System.ComponentModel.DataAnnotations.Schema;

namespace IbuClubs.Api.Domain.Models;

public class Club
{
    [Column("club_id")]
    public Guid ClubId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    [Column("social_media_link")]
    public string SocialMediaLink { get; set; }

    public ICollection<Membership> Memberships { get; set; }
    public ICollection<Activity> Activities { get; set; }
}
