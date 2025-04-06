using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Persistence.Data;

using Microsoft.EntityFrameworkCore;

public class IbuClubsDbContext(DbContextOptions<IbuClubsDbContext> options) : DbContext(options)
{
    public DbSet<Student> Students { get; set; }
    public DbSet<Club> Clubs { get; set; }
    public DbSet<Membership> Memberships { get; set; }
    public DbSet<Activity> Activities { get; set; }
    public DbSet<ActivityEnrollment> ActivityEnrollments { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Membership>()
            .HasKey(m => new { m.StudentId, m.ClubId });

        modelBuilder.Entity<ActivityEnrollment>()
            .HasKey(ae => new { ae.StudentId, ae.ActivityId });
    }
}
