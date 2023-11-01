var builder = WebApplication.CreateBuilder(args);
builder.WebHost.UseUrls("http://[::]:5006");

var app = builder.Build();

app.MapGet("/", () => "Hello World");
// Add services to the container.


app.Run();
