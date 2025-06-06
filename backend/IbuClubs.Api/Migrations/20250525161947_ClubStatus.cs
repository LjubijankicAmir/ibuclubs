using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace IbuClubs.Api.Migrations
{
    /// <inheritdoc />
    public partial class ClubStatus : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Clubs",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "Clubs");
        }
    }
}
