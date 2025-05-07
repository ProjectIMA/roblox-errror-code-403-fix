@echo off
setlocal

set "robloxInstallerURL=https://www.roblox.com/download/client"
set "robloxInstallerPath=%TEMP%\RobloxPlayerLauncher.exe"

:confirm
set /p userConfirm="Are you sure that you would like to proceed? Your Roblox settings might get reset (Y/N): "
if /i "%userConfirm%"=="Y" goto close
if /i "%userConfirm%"=="N" goto end
echo Invalid input. Please type Y or N.
goto confirm

:close
echo Closing any running Roblox processes...
taskkill /f /im RobloxPlayerBeta.exe >nul 2>&1
taskkill /f /im RobloxStudioBeta.exe >nul 2>&1
taskkill /f /im RobloxPlayerLauncher.exe >nul 2>&1
taskkill /f /im RobloxCrashHandler.exe >nul 2>&1
echo Processes closed.

:delete
echo Cleaning Roblox Local AppData contents...
set "robloxPath=%LocalAppData%\Roblox"
if exist "%robloxPath%" (
    del /f /q "%robloxPath%\*.*" >nul 2>&1
    for /d %%D in ("%robloxPath%\*") do rd /s /q "%%D"
    echo Roblox data cleared.
) else (
    echo Roblox folder not found.
)

:install
set /p installConfirm="Would you like to install Roblox? (Y/N): "
if /i "%installConfirm%"=="Y" (
    echo Downloading latest Roblox installer...
    powershell -Command "Invoke-WebRequest -Uri '%robloxInstallerURL%' -OutFile '%robloxInstallerPath%'"
    echo Running installer...
    start "" "%robloxInstallerPath%"
    goto end
) else if /i "%installConfirm%"=="N" (
    echo Installation skipped.
    goto end
) else (
    echo Invalid input. Please type Y or N.
    goto install
)

:end
echo Done.
pause
