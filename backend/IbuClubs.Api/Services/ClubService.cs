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

    public ClubService(IMapper mapper, ClubRepository repository)
    {
        _mapper = mapper;
        _repository = repository;
    }
    public async Task<IEnumerable<Club>> GetAllClubsAsync()
    {
        var clubs = await _repository.GetAllAsync();
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

    public async Task<IEnumerable<Club>> GetByUserIdAsync(string userId)
    {
        var clubs = await _repository.GetByUserIdAsync(userId);
        return clubs;
    }

    public async Task CreateClubAsync(CreateClubDto clubDto)
    {
        var club = _mapper.Map<CreateClubDto, Club>(clubDto);
        club.ClubId = Guid.NewGuid();
        await _repository.AddAsync(club);
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
