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
	IF %USING_AMD% == YES (
		start /b bats\beam_amd.bat %BEAM_WALLET% %WORKER_NAME%
	) ELSE (
		IF %NVIDIA_4GO_CARD% == YES (
			start /b bats\beam_low.bat %BEAM_WALLET% %WORKER_NAME%
		) ELSE (
			start /b bats\beam.bat %BEAM_WALLET% %WORKER_NAME%
		)
	)
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
	IF %USING_AMD% == YES (
		start /b bats\rvn_amd.bat %RVN_WALLET% %WORKER_NAME%
		call:switchCoins %RVN_MINING_TIME%
	) ELSE (
		call bats\rvn.bat %RVN_WALLET% %WORKER_NAME% %RVN_SP%
		echo.
		echo Switching coins ... please wait
		echo.
		timeout /t 10 > nul
	)
)
IF %DONATE% == YES (
	echo [32mThanks a lot for donating[0m
	echo.
	echo Starting Donation mining ...please wait
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
