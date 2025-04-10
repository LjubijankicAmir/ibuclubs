using System.ComponentModel.DataAnnotations;

namespace IbuClubs.Api.Contracts.DTOs.Student;

public class UpdateStudentDto
{
    [StringLength(50)]
    public string Email { get; set; }
    
    [StringLength(50)]
    public string Name { get; set; }
    
    [StringLength(50)]
    public string Surname { get; set; }
}