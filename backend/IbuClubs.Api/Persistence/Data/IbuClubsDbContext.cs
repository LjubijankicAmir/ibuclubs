using IbuClubs.Api.Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace IbuClubs.Api.Persistence.Data
{
    public class IbuClubsDbContext : IdentityDbContext<IdentityUser>
    {
        public IbuClubsDbContext(DbContextOptions<IbuClubsDbContext> options)
            : base(options)
        {
        }

        public DbSet<RefreshToken> RefreshTokens { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<Club> Clubs { get; set; }
        public DbSet<Membership> Memberships { get; set; }
        public DbSet<Activity> Activities { get; set; }
        public DbSet<ActivityEnrollment> ActivityEnrollments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Membership>(entity =>
            {
                entity.HasKey(m => new { m.StudentId, m.ClubId });

                entity.HasOne(m => m.Student)
                    .WithMany(s => s.Memberships)
                    .HasForeignKey(m => m.StudentId)
                    .OnDelete(DeleteBehavior.Cascade);

                entity.HasOne(m => m.Club)
                    .WithMany()
                    .HasForeignKey(m => m.ClubId)
                    .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<ActivityEnrollment>(entity =>
            {
                entity.HasKey(ae => new { ae.StudentId, ae.ActivityId });
                entity.HasOne(ae => ae.Student)
                      .WithMany(s => s.ActivityEnrollments)
                      .HasForeignKey(ae => ae.StudentId)
                      .OnDelete(DeleteBehavior.Cascade);
                entity.HasOne(ae => ae.Activity)
                      .WithMany(a => a.ActivityEnrollments)
                      .HasForeignKey(ae => ae.ActivityId)
                      .OnDelete(DeleteBehavior.Cascade);
            });

            modelBuilder.Entity<RefreshToken>(entity =>
            {
                entity.HasKey(rt => rt.Id);
                entity.Property(rt => rt.Token)
                      .IsRequired();
                entity.Property(rt => rt.CreatedByIp)
                      .IsRequired();

                entity.HasOne(rt => rt.User)
                      .WithMany()
                      .HasForeignKey(rt => rt.UserId)
                      .IsRequired();
            });
        }
    }
}
