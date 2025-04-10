using IbuClubs.Api.Contracts.DTOs.Student;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Domain.Interfaces;

public interface IStudentService
{
    Task<IEnumerable<Student>> GetAllStudentsAsync();
    Task<Student> GetStudentByIdAsync(string id);
    Task CreateStudentAsync(CreateStudentDto studentDto);
    Task UpdateStudentAsync(string id, UpdateStudentDto studentDto);
    Task DeleteStudentAsync(string id);
}