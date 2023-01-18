FROM mcr.microsoft.com/dotnet/sdk:6.0.405 AS build-env

# Copy project files
WORKDIR /source
COPY ["sampledatetime/sampledatetime.csproj", "./sampledatetime/sampledatetime.csproj"]

# Restore
RUN dotnet restore "./sampledatetime/sampledatetime.csproj"

# Copy all source code
COPY . .

# Publish
WORKDIR /source/sampledatetime
RUN dotnet publish -c Release -o /publish

# Runtime
FROM mcr.microsoft.com/dotnet/sdk:6.0.405
WORKDIR /publish
COPY --from=build-env /publish .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
