
@echo off
setlocal
chcp 65001 >nul
title Terminal_4 Windows

if "%~1"=="" goto help
if /i "%~1"=="help" goto help
if /i "%~1"=="merhaba" goto merhaba
if /i "%~1"=="version" goto version
if /i "%~1"=="windows" goto windows
if /i "%~1"=="ip" goto ip
if /i "%~1"=="settings" goto settings
if /i "%~1"=="lang" goto lang

echo Bilinmeyen komut: %~1
echo Yardim icin: terminal4.bat help
exit /b 1

:help
echo ================================
echo       Terminal_4 Windows
echo ================================
echo help       - Yardim
echo merhaba    - Test mesaji
echo version    - Surum bilgisi
echo windows    - Windows bilgisi
echo ip         - IP adresini goster
echo settings   - Windows ayarlari
echo lang       - Dil bilgisi
echo ================================
exit /b 0

:merhaba
echo Merhaba! Terminal_4 hazir.
exit /b 0

:version
echo Terminal_4 Windows version 0.1
exit /b 0

:windows
echo === Windows Bilgileri ===
ver
echo.
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
exit /b 0

:ip
echo === IP Bilgileri ===
ipconfig
exit /b 0

:settings
start ms-settings:
exit /b 0

:lang
echo Windows surumunde varsayilan dil: Turkce
exit /b 0
