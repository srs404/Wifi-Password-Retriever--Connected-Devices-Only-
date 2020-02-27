@echo off
title Wifi Password Retriever
mode 80, 40
color 0B

:start
cls
echo    =====================================
echo.
echo          	Wifi Profile Names
echo.
echo    =====================================
netsh wlan show profiles
echo.
set /p a= Wifi Name # 
if "%a%" == "" goto start
goto proc

:proc
cls
netsh wlan show profiles %a% key=clear
pause>nul
goto start