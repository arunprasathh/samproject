FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build
WORKDIR /publish
COPY publish .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
