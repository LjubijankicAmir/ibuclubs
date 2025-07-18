using AutoMapper;
using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Domain.Repositories;
using Microsoft.AspNetCore.Authorization;

namespace IbuClubs.Api.Services;

public class ClubService : IClubService
{
    private readonly IMapper _mapper;
    private readonly ClubRepository _repository;
    private readonly StudentRepository _studentRepository;
    private readonly MembershipRepository _repositoryMembership;

    public ClubService(IMapper mapper, ClubRepository repository, MembershipRepository repositoryMembership, StudentRepository studentRepository)
    {
        _mapper = mapper;
        _repository = repository;
        _studentRepository = studentRepository;
        _repositoryMembership = repositoryMembership;
    }
    public async Task<IEnumerable<Club>> GetAllClubsAsync()
    {
        var clubs = await _repository.GetAllAsync();
        return clubs;
    }
    
    public async Task<IEnumerable<Club>> GetApprovedClubsAsync()
    {
        var clubs = await _repository.GetApprovedAsync();
        return clubs;
    }

    public async Task<Club> GetClubByIdAsync(string id)
    {
        var club = await _repository.GetByIdAsync(id);
        return club;
    }

    public async Task EnrollUserAsync(string userId, string clubId)
    {
        await _repository.EnrollUserAsync(userId, clubId);        
    }

    public async Task<IEnumerable<Student>> GetEnrolledStudentsAsync(string clubId)
    {
        return await _repository.GetEnrolledStudents(clubId);
    }
    
    public async Task<IEnumerable<ClubMemberDto>> GetClubMembers(string clubId)
    {
        return await _repository.GetClubMembers(clubId);
    }

    public async Task RemoveMemberAsync(string clubId, string userId)
    {
        await _repositoryMembership.KickMember(userId, clubId);
    }

    public async Task ChangeMemberRoleAsync(string clubId, string userId, string role)
    {
        var membership = await _repositoryMembership
            .GetByUserAndClubAsync(Guid.Parse(userId), Guid.Parse(clubId));
        
        if (membership == null)
            throw new KeyNotFoundException($"Membership not found");
        
        membership.Role = role;
        await _repositoryMembership.UpdateAsync(membership);
    }

    public async Task LeaveClubAsync(string userId, string clubId)
    {
        await _repository.LeaveClubAsync(userId, clubId);
    }

    public async Task<Club?> GetOwnedClubAsync(string userId)
    {
       return await _repository.GetOwnedClubAsync(userId);
    }

    public async Task<IEnumerable<Membership>> GetByUserIdAsync(string userId)
    {
        var clubs = await _repository.GetByUserIdAsync(userId);
        return clubs;
    }

    public async Task CreateClubAsync(CreateClubDto clubDto, string userId)
    {
        var club = _mapper.Map<CreateClubDto, Club>(clubDto);
        var studentGuid = Guid.Parse(userId);
        
        var student = await _studentRepository.GetByIdAsync(userId);
        if (student == null)
            throw new KeyNotFoundException($"User {userId} not found");
        
        club.ClubId = Guid.NewGuid();
        await _repository.AddWithOwnerAsync(club, new Membership
        {
            StudentId = studentGuid,
            ClubId = club.ClubId,
            Role = "Owner"
        });
        
    }
    
    public async Task CreateClubAsAdminAsync(CreateClubDto clubDto)
    {
        var club = _mapper.Map<CreateClubDto, Club>(clubDto);
        club.ClubId = Guid.NewGuid();
        await _repository.AddAsync(club);
    }

    public async Task ReviewClubAsync(string clubId, ClubStatus status)
    {
        var club = await _repository.GetByIdAsync(clubId);
        if (club == null)
            throw new KeyNotFoundException($"Club with id {clubId} not found");
        if (club.Status != ClubStatus.Pending)
            throw new InvalidOperationException("Club has already been reviewed");
        
        club.Status = status;
        await _repository.UpdateAsync(club);
    }

    public async Task UpdateClubAsync(string id, UpdateClubDto clubDto)
    {
        var club = await _repository.GetByIdAsync(id);
        _mapper.Map(clubDto, club);
        await _repository.UpdateAsync(club);
    }

    public async Task DeleteClubAsync(string id)
    { 
        await _repository.DeleteAsync(id); 
    }
}
