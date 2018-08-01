FROM microsoft/aspnetcore:2.0
ADD ./ /app
ENV ASPNETCORE_URLS=http://*:${PORT}
WORKDIR /app
ENTRYPOINT [ "dotnet", "HelloWorldAspNetCore.dll" ]
