FROM microsoft/aspnetcore-build
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/Debug/netcoreapp1.1} .
ENTRYPOINT ["dotnet", "webapicore.dll"]
