@echo off
cls

echo.
echo This script is to help you config DarkHash
echo.
call bats\functions.bat printGreen "If you want to answer "Yes" to a question, type : yes"
call bats\functions.bat printRed "If you want to answer "No" to a question, just hit Enter"
echo.
echo.
set /p Amd=Do you have an AMD card ? : 
IF "%Amd%" == "" GOTO :amdLabel
IF NOT %Amd% == yes GOTO :amdLabel
set Amd=YES
GOTO :worker
:amdLabel
set Amd=NO
:worker
echo.
set /p WorkerName=Enter your worker name. (Can be anything, no spaces, no symbols) : 
echo.
set /p SwitchChoice=Do you want to mine the same amout of time for every coin ? :
echo.
set GT=NO
set GlobalTime=1
IF "%SwitchChoice%" == "" GOTO :beam
IF NOT %SwitchChoice% == yes GOTO :beam
set /p GlobalTime=For how long do you want to mine before switching coins ? (Enter a number in hours) : 
set GT=YES

:beam
:: BEAM Coin (BEAM)
set /p BEAM_CHOICE=Do you want to mine BEAM Coin (BEAM) ? : 
echo.
IF "%BEAM_CHOICE%" == "" GOTO :beamSetup
IF NOT %BEAM_CHOICE% == yes GOTO :beamSetup
set BEAM_CHOICE=YES
IF NOT %GT% == YES (
	set BEAM_TIME = 1
	call:askTime BEAM_TIME
	echo.
)
set BEAM_WALLET=
call:askWallet BEAM_WALLET
set NVIDIA_LOW=NO
IF NOT %Amd% == YES (
	call:askNvidiaLow NVIDIA_LOW
)
IF "%NVIDIA_LOW%" == "" GOTO :beamSetup
IF NOT %NVIDIA_LOW% == yes GOTO :beamSetup
set NVIDIA_LOW=YES
echo.
GOTO :btcz
:beamSetup
set BEAM_CHOICE=NO
set NVIDIA_LOW=NO

:btcz
:: BitcoinZ (BTCZ)
set /p BTCZ_CHOICE=Do you want to mine BitcoinZ (BTCZ) ? : 
echo.
IF "%BTCZ_CHOICE%" == "" GOTO :btczSetup
IF NOT %BTCZ_CHOICE% == yes GOTO :btczSetup
set BTCZ_CHOICE=YES
IF NOT %GT% == YES (
	set BTCZ_TIME = 1
	call:askTime BTCZ_TIME
	echo.
)
set BTCZ_WALLET=
call:askWallet BTCZ_WALLET
echo.
GOTO :bze
:btczSetup
set BTCZ_CHOICE=NO

:bze
:: BZEdge (BZE)
set /p BZE_CHOICE=Do you want to mine BZEdge (BZE) ? : 
echo.
IF "%BZE_CHOICE%" == "" GOTO :bzeSetup
IF NOT %BZE_CHOICE% == yes GOTO :bzeSetup
set BZE_CHOICE=YES
IF NOT %GT% == YES (
	set BZE_TIME = 1
	call:askTime BZE_TIME
	echo.
)
set BZE_WALLET=
call:askWallet BZE_WALLET
echo.
GOTO :flux
:bzeSetup
set BZE_CHOICE=NO

:flux
:: Zelcash (FLUX)
set /p FLUX_CHOICE=Do you want to mine Zelcash (FLUX) ? : 
echo.
IF "%FLUX_CHOICE%" == "" GOTO :fluxSetup
IF NOT %FLUX_CHOICE% == yes GOTO :fluxSetup
set FLUX_CHOICE=YES
IF NOT %GT% == YES (
	set FLUX_TIME = 1
	call:askTime FLUX_TIME
	echo.
)
set FLUX_WALLET=
call:askWallet FLUX_WALLET
echo.
GOTO :ltz

:fluxSetup
set FLUX_CHOICE=NO

:ltz
:: LitecoinZ (LTZ)
set /p LTZ_CHOICE=Do you want to mine LitecoinZ (LTZ) ? : 
echo.
IF "%LTZ_CHOICE%" == "" GOTO :ltzSetup
IF NOT %LTZ_CHOICE% == yes GOTO :ltzSetup
set LTZ_CHOICE=YES
IF NOT %GT% == YES (
	set LTZ_TIME = 1
	call:askTime LTZ_TIME
	echo.
)
set LTZ_WALLET=
call:askWallet LTZ_WALLET
echo.
GOTO :rvn
:ltzSetup
set LTZ_CHOICE=NO

:rvn
:: RavenCoin (RVN)
set /p RVN_CHOICE=Do you want to mine RavenCoin (RVN) ? : 
echo.
IF "%RVN_CHOICE%" == "" GOTO :rvnSetup
IF NOT %RVN_CHOICE% == yes GOTO :rvnSetup
set RVN_CHOICE=YES
IF NOT %GT% == YES (
	set RVN_TIME = 1
	call:askTime RVN_TIME
	echo.
)
set RVN_WALLET=
call:askWallet RVN_WALLET
echo.
GOTO :space
:rvnSetup
set RVN_CHOICE=NO

:space
:: Space Coin (SPACE)
set /p SPACE_CHOICE=Do you want to mine Space Coin (SPACE) ? : 
echo.
IF "%SPACE_CHOICE%" == "" GOTO :spaceSetup
IF NOT %SPACE_CHOICE% == yes GOTO :spaceSetup
set SPACE_CHOICE=YES
IF NOT %GT% == YES (
	set SPACE_TIME = 1
	call:askTime SPACE_TIME
	echo.
)
set SPACE_WALLET=
call:askWallet SPACE_WALLET
echo.
GOTO :vdl
:spaceSetup
set SPACE_CHOICE=NO

:vdl
:: Vidulum (VDL)
set /p VDL_CHOICE=Do you want to mine Vidulum (VDL) ? : 
echo.
IF "%VDL_CHOICE%" == "" GOTO :vdlSetup
IF NOT %VDL_CHOICE% == yes GOTO :vdlSetup
set VDL_CHOICE=YES
IF NOT %GT% == YES (
	set VDL_TIME = 1
	call:askTime VDL_TIME
	echo.
)
set VDL_WALLET=
call:askWallet VDL_WALLET
echo.
GOTO :xsg
:vdlSetup
set VDL_CHOICE=NO

:xsg
:: Snowgem TENT (XSG)
set /p XSG_CHOICE=Do you want to mine Snowgem TENT (XSG) ? : 
echo.
IF "%XSG_CHOICE%" == "" GOTO :xsgSetup
IF NOT %XSG_CHOICE% == yes GOTO :xsgSetup
set XSG_CHOICE=YES
IF NOT %GT% == YES (
	set XSG_TIME = 1
	call:askTime XSG_TIME
	echo.
)
set XSG_WALLET=
call:askWallet XSG_WALLET
echo.
GOTO :yec
:xsgSetup
set XSG_CHOICE=NO

:yec
:: Ycash (YEC)
set /p YEC_CHOICE=Do you want to mine Ycash (YEC) ? : 
echo.
IF "%YEC_CHOICE%" == "" GOTO :yecSetup
IF NOT %YEC_CHOICE% == yes GOTO :yecSetup
set YEC_CHOICE=YES
IF NOT %GT% == YES (
	set YEC_TIME = 1
	call:askTime YEC_TIME
	echo.
)
set YEC_WALLET=
call:askWallet YEC_WALLET
echo.
GOTO :zer
:yecSetup
set YEC_CHOICE=NO

:zer
:: ZERO Coin (ZER)
set /p ZER_CHOICE=Do you want to mine ZERO Coin (ZER) ? : 
echo.
IF "%ZER_CHOICE%" == "" GOTO :zerSetup
IF NOT %ZER_CHOICE% == yes GOTO :zerSetup
set ZER_CHOICE=YES
IF NOT %GT% == YES (
	set ZER_TIME = 1
	call:askTime ZER_TIME
	echo.
)
set ZER_WALLET=
call:askWallet ZER_WALLET
echo.
GOTO :donation
:zerSetup
set ZER_CHOICE=NO

:donation
set /p DONATE=Do you want to donate to the developper by mining a little bit for him ? (Default is NO. NO FEES) :
IF "%DONATE%" == "" GOTO :donationSetup
IF NOT %DONATE% == yes GOTO :donationSetup
set DONATE=YES
echo.
call bats\functions.bat printGreen "THANKS A LOT"
echo.
GOTO :writing
:donationSetup
set DONATE=NO

:writing
ren config.bat config.bat.old 2>nul

(
echo @echo off
echo.
echo :: TIME is in HOURS. If you don't specify a time for a coin, this time will be used
echo set WORKER_NAME=%WorkerName%
echo :: Set your worker name here. You can enter any name you want, no space or symbols
echo set SWITCH_EVERY_HOUR=%GlobalTime%
echo :: If you have an AMD cardn set to YES
echo set USING_AMD=%Amd%
echo :: If you intend on mining BEAM and you have a NVIDIA card with 4G, set to YES
echo set NVIDIA_4GO_CARD=%NVIDIA_LOW%
echo.
echo :: BEAM Coin
echo set BEAM=%BEAM_CHOICE%
echo set BEAM_WALLET=%BEAM_WALLET%
echo set BEAM_MINING_TIME=%BEAM_TIME%
echo :: BitcoinZ
echo set BTCZ=%BTCZ_CHOICE%
echo set BTCZ_WALLET=%BTCZ_WALLET%
echo set BTCZ_MINING_TIME=%BTCZ_TIME%
echo :: BZEdge
echo set BZE=%BZE_CHOICE%
echo set BZE_WALLET=%BZE_WALLET%
echo set BZE_MINING_TIME=%BZE_TIME%
echo :: Zelcash
echo set FLUX=%FLUX_CHOICE%
echo set FLUX_WALLET=%FLUX_WALLET%
echo set FLUX_MINING_TIME=%FLUX_TIME%
echo :: LitecoinZ
echo set LTZ=%LTZ_CHOICE%
echo set LTZ_WALLET=%LTZ_WALLET%
echo set LTZ_MINING_TIME=%LTZ_TIME%
echo :: RavenCoin
echo set RVN=%RVN_CHOICE%
echo set RVN_WALLET=%RVN_WALLET%
echo set RVN_MINING_TIME=%RVN_TIME%
echo :: Space Coin
echo set SPACE=%SPACE_CHOICE%
echo set SPACE_WALLET=%SPACE_WALLET%
echo set SPACE_MINING_TIME=%SPACE_TIME%
echo :: Vidulum
echo set VDL=%VDL_CHOICE%
echo set VDL_WALLET=%VDL_WALLET%
echo set VDL_MINING_TIME=%VDL_TIME%
echo :: Snowgem TENT
echo set XSG=%XSG_CHOICE%
echo set XSG_WALLET=%XSG_WALLET%
echo set XSG_MINING_TIME=%XSG_TIME%
echo :: Ycash
echo set YEC=%YEC_CHOICE%
echo set YEC_WALLET=%YEC_WALLET%
echo set YEC_MINING_TIME=%YEC_TIME%
echo :: ZERO Coin
echo set ZER=%ZER_CHOICE%
echo set ZER_WALLET=%ZER_WALLET%
echo set ZER_MINING_TIME=%ZER_TIME%
echo :: Z Classic
echo set ZCL=NO
echo set ZCL_WALLET=
echo set ZCL_MINING_TIME=
echo :: FOXDCoin
echo set FOXD=NO
echo set FOXD_WALLET=
echo set FOXD_MINING_TIME=
echo :: Bitzec
echo set BZC=NO
echo set BZC_WALLET=
echo set BZC_MINING_TIME=
echo.
echo :: DONATIONS ARE OFF BY DEFAULT. NO FEES!
echo :: DONATE=YES if you want to donate. Thanks!
echo set DONATE=%DONATE%
) > config.bat

call bats\functions.bat printGreen "File created : config.bat"
echo.
call bats\functions.bat printRed "If for any reason this config doesn't work, your old config is in config.bat.old"
echo.
echo Thanks for using DarkHash !
pause > nul
goto:eof

:askTime
set /p ANS=For how long ? (Enter a number in hours) : 
set "%~1=%ANS%"
goto:eof

:askWallet
set /p WALLET=Copy your wallet address : 
set "%~1=%WALLET%"
goto:eof

:askNvidiaLow
set /p CARD=Do you have a NVidia GPU with 4GB or less ? : 
set "%~1=%CARD%"
goto:eof