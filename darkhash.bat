@echo off
cls

call config.bat
call bats\functions listing
timeout /t 3 > nul

set /a CHANGE_TIME=%SWITCH_EVERY_HOUR%*3600
set RVN_SP=%RVN_MINING_TIME%	
IF "%RVN_MINING_TIME%" == "" GOTO :nochange
IF NOT "%RVN_MINING_TIME%" == "" GOTO :change

:nochange
set RVN_SP=%CHANGE_TIME%
GOTO :titling

:change
set /a RVN_SP=%RVN_SP%*3600
GOTO :titling

:titling
title=darkhash

:loop
call bats\functions logStartLoop
IF %BTCZ% == YES (
	call bats\functions.bat log BCTZ
	start /b bats\btcz.bat %BTCZ_WALLET% %WORKER_NAME% 
	call bats\functions.bat printYellow "Starting Mining BTCZ"
	call:switchCoins %BTCZ_MINING_TIME%
)

IF %BZE% == YES (
	call bats\functions.bat log BZE
	start /b bats\bze.bat %BZE_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining BZE"
	call:switchCoins %BZE_MINING_TIME%
)

IF %LTZ% == YES (
	call bats\functions.bat log LTZ
	start /b bats\ltz.bat %LTZ_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining LTZ"
	call:switchCoins %LTZ_MINING_TIME%
)

IF %FOXD% == YES (
	call bats\functions.bat log FOXD
	start /b bats\foxd.bat %FOXD_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining FOXD"
	call:switchCoins %FOXD_MINING_TIME%
)

IF %YEC% == YES (
	call bats\functions.bat log YEC
	start /b bats\yec.bat %YEC_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining YEC"
	call:switchCoins %YEC_MINING_TIME%
)

IF %BEAM% == YES (
	call bats\functions.bat log BEAM
	IF %USING_AMD% == YES (
		start /b bats\beam_amd.bat %BEAM_WALLET% %WORKER_NAME%
	) ELSE (
		IF %NVIDIA_4GO_CARD% == YES (
			start /b bats\beam_low.bat %BEAM_WALLET% %WORKER_NAME%
		) ELSE (
			start /b bats\beam.bat %BEAM_WALLET% %WORKER_NAME%
		)
	)
	call bats\functions.bat printYellow "Starting Mining BEAM"
	call:switchCoins %BEAM_MINING_TIME%
)

IF %FLUX% == YES (
	call bats\functions.bat log FLUX
	start /b bats\flux.bat %FLUX_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining FLUX"
	call:switchCoins %FLUX_MINING_TIME%
)

IF %SPACE% == YES (
	call bats\functions.bat log SPACE
	start /b bats\space.bat %SPACE_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining SPACE"
	call:switchCoins %SPACE_MINING_TIME%
)

IF %BZC% == YES (
	call bats\functions.bat log BZC
	start /b bats\bzc.bat %BZC_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining BZC"
	call:switchCoins %BZC_MINING_TIME%
)

IF %ZCL% == YES (
	call bats\functions.bat log ZCL
	start /b bats\zcl.bat %ZCL_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining ZCL"
	call:switchCoins %ZCL_MINING_TIME%
)

IF %ZER% == YES (
	call bats\functions.bat log ZER
	start /b bats\zer.bat %ZER_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining ZER"
	call:switchCoins %ZER_MINING_TIME%
)

IF %XSG% == YES (
	call bats\functions.bat log XSG
	start /b bats\xsg.bat %XSG_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining XSG"
	call:switchCoins %XSG_MINING_TIME%
)

IF %VDL% == YES (
	call bats\functions.bat log VDL
	start /b bats\vdl.bat %VDL_WALLET% %WORKER_NAME%
	call bats\functions.bat printYellow "Starting Mining VDL"
	call:switchCoins %VDL_MINING_TIME%
)

IF %RVN% == YES (
	call bats\functions.bat log RVN
	call bats\functions.bat printYellow "Starting RVN mining ... please wait"
	IF %USING_AMD% == YES (
		start /b bats\rvn_amd.bat %RVN_WALLET% %WORKER_NAME%
		call:switchCoins %RVN_MINING_TIME%
	) ELSE (
		call bats\rvn.bat %RVN_WALLET% %WORKER_NAME% %RVN_SP%
		echo.
		echo Switching coins ... please wait"
		echo.
		timeout /t 10 > nul
	)
)

IF %DONATE% == YES (
	call bats\functions.bat logDonation
	call bats\functions.bat printGreen "Thanks a lot for donating"
	echo.
	call bats\functions.bat printYellow "Starting Donation mining ...please wait"
	IF %USING_AMD% == YES (
		IF EXIST teamredminer.exe (
				start /b bats\rvn_amd.bat RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z %WORKER_NAME%
				timeout /t 600 > nul
				taskkill /im miner.exe /f /t > nul
				taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash" > nul
			) ELSE (
				start /b bats\btcz.bat t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN %WORKER_NAME% 
				echo Starting Mining BTCZ
				timeout /t 600 > nul
				taskkill /im miner.exe /f /t > nul
				taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash" > nul
			)
	) ELSE (
		IF EXIST t-rex.exe (
			call bats\rvn.bat RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z %WORKER_NAME% 600
		) ELSE (
			start /b bats\btcz.bat t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN %WORKER_NAME% 
			echo Starting Mining BTCZ
			timeout /t 600 > nul
			taskkill /im miner.exe /f /t > nul
			taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash" > nul
		)
	)

	echo.
	call bats\functions.bat printGreen "Thanks a lot for donating"
	echo.
	call bats\functions.bat printYellow "Switching coins ... please wait"
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
call bats\functions.bat printYellow "Switching coins ... please wait"
call bats\functions.bat logSwitch
echo.
timeout /t 10 > nul
goto:eof

pause