@echo off
cls
call bats\functions printYellow " This script allows you to import your configuration from an old version of DarkHash"
echo.
call bats\functions printYellow " Select the DarkHash folder where your config is. Press any key to begin."
echo.
pause > nul

set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'Please choose a folder.',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

IF NOT EXIST %folder%\config.bat GOTO :notGood
xcopy /F /Y %folder%\config.bat config.bat >nul
call bats\functions printGreen " Config imported successfully. Happy mining"
echo.
call bats\functions printGreen " Thanks for using DarkHash"
pause >nul
goto:eof

:notGood
echo.
call bats\functions printRed " The folder you selected isn't a valid DarkHash folder. Try again"
pause >nul