namespace IbuClubs.Api.Domain.Models;

public class Student
{
    public int StudentId { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string Name { get; set; }
    public string Surname { get; set; }

    public ICollection<Membership> Memberships { get; set; }
    public ICollection<ActivityEnrollment> ActivityEnrollments { get; set; }
}
