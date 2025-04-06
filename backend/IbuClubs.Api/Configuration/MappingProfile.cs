using IbuClubs.Api.Contracts.DTOs.Club;
using IbuClubs.Api.Domain.Models;

namespace IbuClubs.Api.Configuration;

using AutoMapper;

public class MappingProfile : Profile
{
    public MappingProfile()
    {
        CreateMap<CreateClubDto, Club>()
            .ForMember(dest => dest.ClubId, opt => opt.Ignore());
        CreateMap<UpdateClubDto, Club>()
            .ForMember(dest => dest.ClubId, opt => opt.Ignore());
    }
}