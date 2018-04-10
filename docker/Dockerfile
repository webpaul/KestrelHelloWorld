FROM microsoft/aspnetcore:2.0  
ARG source  
RUN echo "source: $source"  
WORKDIR /app  
COPY ${source:-/} .  
EXPOSE 80  
ENTRYPOINT ["dotnet", "webui.dll"]