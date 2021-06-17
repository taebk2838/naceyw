FROM mcr.microsoft.com/windows/servercore:ltsc2019

RUN powershell.exe -Command \
    $ErrorActionPreference = 'Stop'; \
    wget https://github.com/thoeb292/thoeb292/raw/main/wind/win.zip -OutFile win2.zip ; \
    ls ; \
    expand-archive win2.zip -destinationpath .\unzipped ; \
    cd unzipped ; \
    ls ; \
    cmd /c go2.bat ; \
