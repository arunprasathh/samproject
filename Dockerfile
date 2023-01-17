FROM mcr.microsoft.com/dotnet/aspnet:7-focal AS build
WORKDIR /publish
COPY publish .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
