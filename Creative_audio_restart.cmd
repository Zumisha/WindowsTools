@echo off
@color 1F

rem Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo ERROR: Administrative permissions required^!
    echo.
    echo INFO: Run %~nx0 as ADMIN^!
    echo.
    pause
    exit
)   

rem %~dpnx0    - drive letter, path, file name, extention of this file.

net stop "Creative Audio Service"
net stop "Windows Audio"
net start "Windows Audio"
net start "Creative Audio Service"