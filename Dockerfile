FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine AS build
WORKDIR /app
COPY --from=build-env /App/out .
ENTRYPOINT ["dotnet", "sampledatetime.dll"]
