call config.bat
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
@echo off
cls

:loop
IF %BTCZ% == YES (
	call:log BCTZ
	start /b bats\btcz.bat %BTCZ_WALLET% %WORKER_NAME% 
	echo [33mStarting Mining BTCZ[0m
	call:switchCoins %BTCZ_MINING_TIME%
)

IF %BZE% == YES (
	call:log BZE
	start /b bats\bze.bat %BZE_WALLET% %WORKER_NAME%
	echo [33mStarting Mining BZE[0m
	call:switchCoins %BZE_MINING_TIME%
)

IF %LTZ% == YES (
	call:log LTZ
	start /b bats\ltz.bat %LTZ_WALLET% %WORKER_NAME%
	echo [33mStarting Mining LTZ[0m
	call:switchCoins %LTZ_MINING_TIME%
)

IF %FOXD% == YES (
	call:log FOXD
	start /b bats\foxd.bat %FOXD_WALLET% %WORKER_NAME%
	echo [33mStarting Mining FOXD[0m
	call:switchCoins %FOXD_MINING_TIME%
)

IF %YEC% == YES (
	call:log YEC
	start /b bats\yec.bat %YEC_WALLET% %WORKER_NAME%
	echo [33mStarting Mining YEC[0m
	call:switchCoins %YEC_MINING_TIME%
)

IF %BEAM% == YES (
	call:log BEAM
	IF %USING_AMD% == YES (
		start /b bats\beam_amd.bat %BEAM_WALLET% %WORKER_NAME%
	) ELSE (
		IF %NVIDIA_4GO_CARD% == YES (
			start /b bats\beam_low.bat %BEAM_WALLET% %WORKER_NAME%
		) ELSE (
			start /b bats\beam.bat %BEAM_WALLET% %WORKER_NAME%
		)
	)
	echo [33mStarting Mining BEAM[0m
	call:switchCoins %BEAM_MINING_TIME%
)

IF %FLUX% == YES (
	call:log FLUX
	start /b bats\flux.bat %FLUX_WALLET% %WORKER_NAME%
	echo [33mStarting Mining FLUX[0m
	call:switchCoins %FLUX_MINING_TIME%
)

IF %SPACE% == YES (
	call:log SPACE
	start /b bats\space.bat %SPACE_WALLET% %WORKER_NAME%
	echo [33mStarting Mining SPACE[0m
	call:switchCoins %SPACE_MINING_TIME%
)

IF %BZC% == YES (
	call:log BZC
	start /b bats\bzc.bat %BZC_WALLET% %WORKER_NAME%
	echo [33mStarting Mining BZC[0m
	call:switchCoins %BZC_MINING_TIME%
)

IF %ZCL% == YES (
	call:log ZCL
	start /b bats\zcl.bat %ZCL_WALLET% %WORKER_NAME%
	echo [33mStarting Mining ZCL[0m
	call:switchCoins %ZCL_MINING_TIME%
)

IF %ZER% == YES (
	call:log ZER
	start /b bats\zer.bat %ZER_WALLET% %WORKER_NAME%
	echo [33mStarting Mining ZER[0m
	call:switchCoins %ZER_MINING_TIME%
)

IF %XSG% == YES (
	call:log XSG
	start /b bats\xsg.bat %XSG_WALLET% %WORKER_NAME%
	echo [33mStarting Mining XSG[0m
	call:switchCoins %XSG_MINING_TIME%
)

IF %VDL% == YES (
	call:log VDL
	start /b bats\vdl.bat %VDL_WALLET% %WORKER_NAME%
	echo [33mStarting Mining VDL[0m
	call:switchCoins %VDL_MINING_TIME%
)

IF %RVN% == YES (
	call:log RVN
	echo [33mStarting RVN mining ... please wait[0m
	IF %USING_AMD% == YES (
		start /b bats\rvn_amd.bat %RVN_WALLET% %WORKER_NAME%
		call:switchCoins %RVN_MINING_TIME%
	) ELSE (
		call bats\rvn.bat %RVN_WALLET% %WORKER_NAME% %RVN_SP%
		echo.
		echo Switching coins ... please wait[0m
		echo.
		timeout /t 10 > nul
	)
)

IF %DONATE% == YES (
	call:logDonation
	echo [32mThanks a lot for donating[0m
	echo.
	echo [33mStarting Donation mining ...please wait[0m
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
	echo [32mThanks a lot for donating[0m
	echo.
	echo [33mSwitching coins ... please wait[0m
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
echo [33mSwitching coins ... please wait[0m
call:logSwitch
echo.
timeout /t 10 > nul
goto:eof

:getDate
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
echo Current time is %mydate%:%mytime%
goto:eof

:log
echo %date% %time:~0,5% : Starting %~1 mining>>log.txt
goto:eof

:logDonation
echo %date% %time:~0,5% : Starting Donation mining. Thank you!>>log.txt
goto:eof

:logSwitch
echo %date% %time:~0,5% : Switching coins ...>>log.txt
goto:eof

goto:eof

pause
