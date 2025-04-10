using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Student;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Domain.Repositories;

namespace IbuClubs.Api.Services;

public class StudentService : IStudentService
{
    private readonly IMapper _mapper;
    private readonly StudentRepository _repository;

    public StudentService(IMapper mapper, StudentRepository repository)
    {
        _mapper = mapper;
        _repository = repository;
    }
    
    public async Task<IEnumerable<Student>> GetAllStudentsAsync()
    {
        var students = await _repository.GetAllAsync();
        return students;
    }

    public async Task<Student> GetStudentByIdAsync(string id)
    {
        var student = await _repository.GetByIdAsync(id);
        return student;
    }

    public async Task CreateStudentAsync(CreateStudentDto studentDto)
    {
        var student = _mapper.Map<CreateStudentDto, Student>(studentDto);
        student.StudentId = Guid.NewGuid();
        await _repository.AddAsync(student);
    }

    public async Task UpdateStudentAsync(string id, UpdateStudentDto studentDto)
    {
        var student = await _repository.GetByIdAsync(id);
        _mapper.Map(studentDto, student);
        await _repository.UpdateAsync(student);
    }

    public async Task DeleteStudentAsync(string id)
    {
        await _repository.DeleteAsync(id);
    }
}