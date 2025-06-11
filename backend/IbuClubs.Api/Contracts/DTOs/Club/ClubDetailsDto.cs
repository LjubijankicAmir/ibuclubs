using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Contracts.DTOs.Club
{
    public class ClubDetailsDto
    {
        public Guid   ClubId          { get; set; }
        public string Name            { get; set; }
        public string Description     { get; set; }
        public string? SocialMediaLink { get; set; }
        public ClubStatus Status      { get; set; }
        public int MembershipCount   { get; set; }
        public bool   IsEnrolled      { get; set; }
    }
}