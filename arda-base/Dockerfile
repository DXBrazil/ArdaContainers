FROM microsoft/windowsservercore:10.0.14393.447
ENV WINDOWS_IMAGE_VERSION=10.0.14393.447

# More information:
# Link: https://github.com/dotnet/dotnet-docker/blob/master/1.0/nanoserver/runtime/Dockerfile

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

# Install .NET Core

ENV DOTNET_VERSION 1.1.0
ENV DOTNET_DOWNLOAD_URL https://dotnetcli.blob.core.windows.net/dotnet/release/1.1.0/Binaries/$DOTNET_VERSION/dotnet-win-x64.$DOTNET_VERSION.zip

RUN Invoke-WebRequest $Env:DOTNET_DOWNLOAD_URL -OutFile dotnet.zip; \
    Expand-Archive dotnet.zip -DestinationPath $Env:ProgramFiles\dotnet; \
    Remove-Item -Force dotnet.zip

RUN setx /M PATH $($Env:PATH + ';' + $Env:ProgramFiles + '\dotnet'); 

RUN Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord
