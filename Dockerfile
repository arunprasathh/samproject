FROM mcr.microsoft.com/dotnet/sdk:6.0.405 AS AS build-env
WORKDIR /app
COPY --from=build-env /App/out .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
