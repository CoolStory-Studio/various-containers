FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Download & Install Git
RUN powershell -Command "Invoke-WebRequest -UseBasicParsing https://gitforwindows.org/download/win-git.exe -OutFile git.exe; .\git.exe /VERYSILENT /NORESTART"

# Clone vcpkg repository
RUN git clone https://github.com/microsoft/vcpkg.git
WORKDIR /vcpkg

# Install vcpkg and Boost
RUN bootstrap-vcpkg.bat && \
    vcpkg install boost:x64-windows
