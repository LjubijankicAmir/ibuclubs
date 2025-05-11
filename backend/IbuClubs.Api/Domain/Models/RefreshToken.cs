using System;
using Microsoft.AspNetCore.Identity;

namespace IbuClubs.Api.Domain.Models
{
    public class RefreshToken
    {
        public int      Id               { get; set; }
        public string   Token            { get; set; } = null!;
        public DateTime Expires          { get; set; }
        public DateTime Created          { get; set; }
        public string   CreatedByIp      { get; set; } = null!;
        public DateTime? Revoked         { get; set; }
        public string?  RevokedByIp      { get; set; }
        public string?  ReplacedByToken  { get; set; }

        public string   UserId           { get; set; } = null!;
        public IdentityUser User         { get; set; } = null!;
        
        public bool IsActive => Revoked == null && !IsExpired;
        public bool IsExpired => DateTime.UtcNow >= Expires;
    }
}