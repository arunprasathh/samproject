FROM mcr.microsoft.com/dotnet/sdk:6.0.405 AS build
WORKDIR /app
COPY --from=build-env /App/out .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
