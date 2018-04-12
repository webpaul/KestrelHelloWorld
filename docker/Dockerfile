FROM microsoft/aspnetcore:2.0  
WORKDIR /app  
COPY ${source:-/} .  
EXPOSE 80  
ENTRYPOINT ["dotnet", "webui.dll"]