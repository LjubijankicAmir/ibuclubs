using System;

namespace IbuClubs.Api.Domain.Models
{
    public class FcmToken
    {
        public Guid Id { get; set; }          
        public string UserId { get; set; }    
        public string Token { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}