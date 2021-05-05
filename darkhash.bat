set BEAM_WALLET=
set BTCZ_WALLET=t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN
set BZC_WALLET=t1W2JvfbE1ranBcPfDJ7jbuKjc4Ck8y3QyM
set BZE_WALLET=t1ddWRt39Mnp3X12o35icVx3mWzVYjUHLAd
set FLUX_WALLET=t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN
set FOXD_WALLET=F7uKVqX8GmJ8sdX3uxHQGPnkGxqHZ5mMu9
set LTZ_WALLET=L1GT3uYXeR49NCpxuFyX6LjutKmGXoVaXQD
set RVN_WALLET=RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z
set SPACE_WALLET=RRiiAaPUE5B4pqtUQehmBymfqazsWTwYu5
set VDL_WALLET=v1RCWRCSKmvoSNb9t4F2NMVR4t6CxxRAeE3
set XSG_WALLET=s1Ytqk64DSFsEPNNPWHZrgEmdiVqAcGsW5T
set YEC_WALLET=s1Ub5y7irLd61npqxDuNz4Xm6eFmTHqDkiz
set ZCL_WALLET=t1ZUYircJEBcZtMqjjwoJsBbRXaxAZkAQBp
set ZER_WALLET=t1ZcGDr4RL2KP3caD24gWJvwBRpy7iXEhRx

set BEAM=NO
set BTCZ=YES
set BZC=NO
set BZE=YES
set FLUX=NO
set FOXD=NO
set LTZ=NO
set RVN=YES
set SPACE=NO
set VDL=NO
set XSG=NO
set YEC=NO
set ZCL=NO
set ZER=NO

set SWITCH_EVERY_HOUR=1
set WORKER_NAME=helium
:: DONATIONS ARE OFF BY DEFAULT !! NO FEES
:: DONATE=YES if you want to donate. Thanks!
set DONATE=NO

set /a CHANGE_TIME=%SWITCH_EVERY_HOUR%*3600
title=darkhash

:loop

IF %RVN% == YES (
	call bats\rvn.bat %RVN_WALLET% %WORKER_NAME% %CHANGE_TIME%
	timeout /t 3
)

IF %BTCZ% == YES (
	start bats\btcz.bat %BTCZ_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %BZE% == YES (
	start bats\bze.bat %BZE_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)


IF %LTZ% == YES (
	start bats\ltz.bat %LTZ_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %FOXD% == YES (
	start bats\foxd.bat %FOXD_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %YEC% == YES (
	start bats\yec.bat %YEC_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %BEAM% == YES (
	start bats\beam.bat %BEAM_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %FLUX% == YES (
	start bats\flux.bat %FLUX_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %SPACE% == YES (
	start bats\space.bat %SPACE_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %BZC% == YES (
	start bats\bzc.bat %BZC_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %ZCL% == YES (
	start bats\zcl.bat %ZCL_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %ZER% == YES (
	start bats\zer.bat %ZER_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %XSG% == YES (
	start bats\xsg.bat %XSG_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %VDL% == YES (
	start bats\vdl.bat %VDL_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %ZEC% == YES (
	start bats\zec.bat %ZEC_WALLET% %WORKER_NAME%
	timeout /t %CHANGE_TIME%
	taskkill /im miner.exe /f /t
	taskkill /im cmd.exe /f /fi "WINDOWTITLE ne darkhash"
	timeout /t 3
)

IF %DONATE% == YES (
	call bats\rvn.bat RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z %WORKER_NAME% 600
	timeout /t 3
)

goto loop
