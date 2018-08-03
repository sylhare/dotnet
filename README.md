# .NET

[![Build Status](https://travis-ci.org/Sylhare/dotnet.svg?branch=master)](https://travis-ci.org/Sylhare/dotnet) [![Docker Pulls](https://img.shields.io/docker/pulls/sylhare/hello-dotnet.svg)](https://hub.docker.com/r/sylhare/hello-dotnet/)


## Instal .Net

On Ubuntu **v16.04**

- Step 1 Register the trusted Microsoft signature key
    ```
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    ```

- Step 2 Register the Microsoft Product feed
    ```
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
    ```

- Step 3 Install .NET Core SDK on Ubuntu
    ```
    sudo apt-get update
    sudo apt-get install dotnet-sdk-2.0.0
    ```
    
- Step 4 Test installation
    ```
    dotnet --version
    ```
    
## Run the application

You can use the docker image at [sylhare/hello-dotnet](https://hub.docker.com/r/sylhare/hello-dotnet/).
Or directly inside the folder using:
```
dotnet run
```

The application by default should be running on port `5000`.
```
curl localhost:5000
```


## For Dockerizing

Before dockerizing the application, we need to publish it using:
```
dotnet publish -c Release
```

The docker file being used then should be place into `bin/Release/netcoreapp2.0/publish/
` where the application here `RazorPage.dll` has been created.