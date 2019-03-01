@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET SCRIPTDIR=%~dp0
SET SCRIPTDIR=%SCRIPTDIR:~0,-1%

SET PATH=%PATH%;"%SystemRoot%\Microsoft.NET\Framework\v4.0.30319"

msbuild "%SCRIPTDIR%\Installer.wixproj" /p:Version=1.2.1

pause

:: explorer.exe /n, /e, "%SCRIPTDIR%\Deploy\Release"