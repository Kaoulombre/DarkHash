call config.bat
set /a CHANGE_TIME=%SWITCH_EVERY_HOUR%*3600
title=darkhash
@echo off
cls

:loop
IF %BTCZ% == YES (
	start /b bats\btcz.bat %BTCZ_WALLET% %WORKER_NAME% 
	echo Mining BTCZ ...
	call:switchCoins
)

IF %BZE% == YES (
	start /b bats\bze.bat %BZE_WALLET% %WORKER_NAME%
	echo Mining BZE ...
	call:switchCoins
)


IF %LTZ% == YES (
	start /b bats\ltz.bat %LTZ_WALLET% %WORKER_NAME%
	echo Mining LTZ ...
	call:switchCoins
)

IF %FOXD% == YES (
	start /b bats\foxd.bat %FOXD_WALLET% %WORKER_NAME%
	echo Mining FOXD ...
	call:switchCoins
)

IF %YEC% == YES (
	start /b bats\yec.bat %YEC_WALLET% %WORKER_NAME%
	echo Mining YEC ...
	call:switchCoins
)

IF %BEAM% == YES (
	start /b bats\beam.bat %BEAM_WALLET% %WORKER_NAME%
	echo Mining BEAM ...
	call:switchCoins
)

IF %FLUX% == YES (
	start /b bats\flux.bat %FLUX_WALLET% %WORKER_NAME%
	echo Mining FLUX ...
	call:switchCoins
)

IF %SPACE% == YES (
	start /b bats\space.bat %SPACE_WALLET% %WORKER_NAME%
	echo Mining SPACE ...
	call:switchCoins
)

IF %BZC% == YES (
	start /b bats\bzc.bat %BZC_WALLET% %WORKER_NAME%
	echo Mining BZC ...
	call:switchCoins
)

IF %ZCL% == YES (
	start /b bats\zcl.bat %ZCL_WALLET% %WORKER_NAME%
	echo Mining ZCL ...
	call:switchCoins
)

IF %ZER% == YES (
	start /b bats\zer.bat %ZER_WALLET% %WORKER_NAME%
	echo Mining ZER ...
	call:switchCoins
)

IF %XSG% == YES (
	start /b bats\xsg.bat %XSG_WALLET% %WORKER_NAME%
	echo Mining XSG ...
	call:switchCoins
)

IF %VDL% == YES (
	start /b bats\vdl.bat %VDL_WALLET% %WORKER_NAME%
	echo Mining VDL ...
	call:switchCoins
)

IF %RVN% == YES (
	echo Starting RVN mining ... please wait
	call bats\rvn.bat %RVN_WALLET% %WORKER_NAME% %CHANGE_TIME%
	echo.
	echo Switching coins ... please wait
	echo.
	timeout /t 10 > nul
)

IF %DONATE% == YES (
	echo Starting Donation mining ... Thanks a lot for donating
	call bats\rvn.bat RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z %WORKER_NAME% 600
	echo.
	echo Thanks for the donation !
	echo Switching coins ... please wait
	echo.
	timeout /t 10 > nul
)
goto loop

:switchCoins
timeout /t %CHANGE_TIME% > nul
taskkill /im miner.exe /f /t > nul
taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash" > nul
echo.
echo Switching coins ... please wait
echo.
timeout /t 10 > nul
goto:eof

pause
