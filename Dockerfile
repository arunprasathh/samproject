FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build
WORKDIR /sampledatetime
COPY publish .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
