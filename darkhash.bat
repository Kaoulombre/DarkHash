call config.bat
set /a CHANGE_TIME=%SWITCH_EVERY_HOUR%*3600
set RVN_SP=%RVN_MINING_TIME%
IF "%RVN_MINING_TIME%" == "" (
	set RVN_SP=%CHANGE_TIME%
) ELSE (
	set /a RVN_SP=%RVN_SP%*3600
)

title=darkhash
@echo off
cls

:loop
IF %BTCZ% == YES (
	start /b bats\btcz.bat %BTCZ_WALLET% %WORKER_NAME% 
	echo Starting Mining BTCZ
	call:switchCoins %BTCZ_MINING_TIME%
)

IF %BZE% == YES (
	start /b bats\bze.bat %BZE_WALLET% %WORKER_NAME%
	echo Starting Mining BZE
	call:switchCoins %BZE_MINING_TIME%
)


IF %LTZ% == YES (
	start /b bats\ltz.bat %LTZ_WALLET% %WORKER_NAME%
	echo Starting Mining LTZ
	call:switchCoins %LTZ_MINING_TIME%
)

IF %FOXD% == YES (
	start /b bats\foxd.bat %FOXD_WALLET% %WORKER_NAME%
	echo Starting Mining FOXD
	call:switchCoins %FOXD_MINING_TIME%
)

IF %YEC% == YES (
	start /b bats\yec.bat %YEC_WALLET% %WORKER_NAME%
	echo Starting Mining YEC
	call:switchCoins %YEC_MINING_TIME%
)

IF %BEAM% == YES (
	start /b bats\beam.bat %BEAM_WALLET% %WORKER_NAME%
	echo Starting Mining BEAM
	call:switchCoins %BEAM_MINING_TIME%
)

IF %FLUX% == YES (
	start /b bats\flux.bat %FLUX_WALLET% %WORKER_NAME%
	echo Starting Mining FLUX
	call:switchCoins %FLUX_MINING_TIME%
)

IF %SPACE% == YES (
	start /b bats\space.bat %SPACE_WALLET% %WORKER_NAME%
	echo Starting Mining SPACE
	call:switchCoins %SPACE_MINING_TIME%
)

IF %BZC% == YES (
	start /b bats\bzc.bat %BZC_WALLET% %WORKER_NAME%
	echo Starting Mining BZC
	call:switchCoins %BZC_MINING_TIME%
)

IF %ZCL% == YES (
	start /b bats\zcl.bat %ZCL_WALLET% %WORKER_NAME%
	echo Starting Mining ZCL
	call:switchCoins %ZCL_MINING_TIME%
)

IF %ZER% == YES (
	start /b bats\zer.bat %ZER_WALLET% %WORKER_NAME%
	echo Starting Mining ZER
	call:switchCoins %ZER_MINING_TIME%
)

IF %XSG% == YES (
	start /b bats\xsg.bat %XSG_WALLET% %WORKER_NAME%
	echo Starting Mining XSG
	call:switchCoins %XSG_MINING_TIME%
)

IF %VDL% == YES (
	start /b bats\vdl.bat %VDL_WALLET% %WORKER_NAME%
	echo Starting Mining VDL
	call:switchCoins %VDL_MINING_TIME%
)

IF %RVN% == YES (
	echo Starting RVN mining ... please wait
	call bats\rvn.bat %RVN_WALLET% %WORKER_NAME% %RVN_SP%
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
set SP=%~1
IF "%~1" == "" (
	set SP=%CHANGE_TIME%
) ELSE (
	set /a SP=%SP%*3600
)
timeout /t %SP% > nul
taskkill /im miner.exe /f /t > nul
taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash" > nul
echo.
echo Switching coins ... please wait
echo.
timeout /t 10 > nul
goto:eof

pause
