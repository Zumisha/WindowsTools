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

net use /d Z:
net use Z: \\serv-pc\Distr