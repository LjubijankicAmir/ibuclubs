using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Student;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using Microsoft.AspNetCore.Mvc;

namespace IbuClubs.Api.Controllers;

[ApiController]
[Route("/api/[controller]/[action]")]
public class StudentController(IStudentService _studentService, IMapper _mapper) : ControllerBase
{
    [HttpGet]
    public async Task<IActionResult> GetAllStudentsAsync()
    {
        try
        {
            var students = await _studentService.GetAllStudentsAsync();
            if (students == null)
            {
                return NoContent();
            }

            return Ok(students);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetStudentByIdAsync(string id)
    {
        try
        {
            var student = await _studentService.GetStudentByIdAsync(id);
            if (student == null)
            {
                return NotFound();
            }

            return Ok(student);
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPost]
    public async Task<IActionResult> CreateStudentAsync(CreateStudentDto studentDto)
    {
        try
        {
            await _studentService.CreateStudentAsync(studentDto);
            return Ok(new { message = "Student created successfully" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> UpdateStudentAsync(string id, UpdateStudentDto studentDto)
    {
        try
        {
            var student = await _studentService.GetStudentByIdAsync(id);
            if (student == null)
            {
                return NotFound();
            }

            await _studentService.UpdateStudentAsync(id, studentDto);
            return Ok(new { message = "Student updated successfully" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteStudentAsync(string id)
    {
        try
        {
            var student = await _studentService.GetStudentByIdAsync(id);
            if (student == null)
            {
                return NotFound();
            }

            await _studentService.DeleteStudentAsync(id);
            return Ok(new { message = "Student deleted successfully" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, $"Internal server error: {ex.Message}");
        }
    }
}