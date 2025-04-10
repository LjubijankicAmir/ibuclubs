using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Repositories;
using IbuClubs.Api.Persistence.Data;
using IbuClubs.Api.Services;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<IbuClubsDbContext>(options =>
    options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));

builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
builder.Services.AddScoped<ClubRepository>();
builder.Services.AddScoped<StudentRepository>();
builder.Services.AddScoped<ActivityRepository>();
builder.Services.AddScoped<IClubService, ClubService>();
builder.Services.AddScoped<IStudentService, StudentService>();
builder.Services.AddScoped<IActivityService, ActivityService>();
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());


var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();