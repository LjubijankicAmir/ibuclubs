using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Student;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Domain.Repositories;
using Microsoft.AspNetCore.Identity;

namespace IbuClubs.Api.Services;

public class StudentService : IStudentService
{
    private readonly IMapper _mapper;
    private readonly StudentRepository _repository;
    private readonly UserManager<IdentityUser> _userManager;

    public StudentService(IMapper mapper, StudentRepository repository, UserManager<IdentityUser> userManager)
    {
        _mapper = mapper;
        _repository = repository;
        _userManager = userManager;
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
        var identityUser = new IdentityUser
        {
            Id = student.StudentId.ToString(),
            Email = student.Email,
            UserName = student.Email
        };
        var result = await _userManager.CreateAsync(identityUser, student.Password);
        if (!result.Succeeded) throw new ApplicationException(result.Errors.First().Description);
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