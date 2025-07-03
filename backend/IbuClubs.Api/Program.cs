using System.Text;
using System.Text.Json.Serialization;
using FirebaseAdmin;
using Google.Apis.Auth.OAuth2;
using IbuClubs.Api.Domain.Interfaces;
using IbuClubs.Api.Domain.Models;
using IbuClubs.Api.Domain.Repositories;
using IbuClubs.Api.Persistence.Data;
using IbuClubs.Api.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;  

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowDevClient", policy =>
    {
        policy.WithOrigins("http://localhost:5173")
              .AllowAnyHeader()
              .AllowAnyMethod();
    });
});

// Controllers
builder.Services.AddControllers().AddJsonOptions(opts =>
{
    opts.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles;
});;
builder.Services.AddEndpointsApiExplorer();


builder.Services.AddSwaggerGen(c =>
{

    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Description = "JWT Authorization header using the Bearer scheme.\r\n\r\n" +
                      "Enter ‘Bearer’ [space] and then your token.\r\n\r\n" +
                      "Example: \"Bearer eyJhbGci...\"",
        Name = "Authorization",
        In = ParameterLocation.Header,
        Type = SecuritySchemeType.ApiKey,
        Scheme = "Bearer"
    });
    
    c.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference 
                { 
                    Type = ReferenceType.SecurityScheme, 
                    Id = "Bearer" 
                }
            },
            Array.Empty<string>()
        }
    });
});

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<IbuClubsDbContext>(options =>
    options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));


builder.Services
    .AddIdentity<IdentityUser, IdentityRole>(opts =>
    {
        opts.Password.RequireDigit           = true;
        opts.Password.RequiredLength         = 6;
        opts.Password.RequireNonAlphanumeric = true;
        opts.User.RequireUniqueEmail         = true;
    })
    .AddEntityFrameworkStores<IbuClubsDbContext>()
    .AddDefaultTokenProviders();


builder.Services.Configure<JwtSettings>(
    builder.Configuration.GetSection("JwtSettings"));

var jwt = builder.Configuration.GetSection("JwtSettings");
var key = Encoding.UTF8.GetBytes(jwt["SecretKey"]!);


builder.Services
    .AddAuthentication(options =>
    {
        options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
        options.DefaultChallengeScheme    = JwtBearerDefaults.AuthenticationScheme;
    })
    .AddJwtBearer(options =>
    {
        options.RequireHttpsMetadata      = false;
        options.SaveToken                 = true;
        options.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuer           = true,
            ValidateAudience         = true,
            ValidateLifetime         = true,
            ValidateIssuerSigningKey = true,
            ValidIssuer              = jwt["Issuer"],
            ValidAudience            = jwt["Audience"],
            IssuerSigningKey         = new SymmetricSecurityKey(key)
        };
    });


builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
builder.Services.AddScoped<ClubRepository>();
builder.Services.AddScoped<StudentRepository>();
builder.Services.AddScoped<ActivityRepository>();
builder.Services.AddScoped<MembershipRepository>();
builder.Services.AddScoped<ITokenService, TokenService>();
builder.Services.AddScoped<IClubService, ClubService>();
builder.Services.AddScoped<IStudentService, StudentService>();
builder.Services.AddScoped<IActivityService, ActivityService>();
builder.Services.AddScoped<FcmService>();
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());

var app = builder.Build();

FirebaseApp.Create(new AppOptions()
{
    Credential = GoogleCredential.FromFile("firebase-service-account.json")
});

using (var scope = app.Services.CreateScope())
{
    var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();
    var userManager = scope.ServiceProvider.GetRequiredService<UserManager<IdentityUser>>();

    foreach (var role in new[] { "Admin", "Student" })
    {
        if (!await roleManager.RoleExistsAsync(role))
            await roleManager.CreateAsync(new IdentityRole(role));
    }
    
    var adminEmail = "admin@stu.ibu.edu.ba";
    var adminUser = await userManager.FindByEmailAsync(adminEmail);
    if (adminUser == null)
    {
        adminUser = new IdentityUser { UserName = adminEmail, Email = adminEmail };
        var result = await userManager.CreateAsync(adminUser, "Admin123.");
        if (result.Succeeded)
        {
            await userManager.AddToRoleAsync(adminUser, "Admin");
        }
        else
        {
            foreach (var error in result.Errors)
            {
                throw new Exception(error.Description);
            }
        }
    }
}

app.UseCors("AllowDevClient");

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

//app.UseHttpsRedirection();
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();


app.MapGet("/", () => Results.Ok("✅ IbuClubs.Api is up"));

app.Run();
