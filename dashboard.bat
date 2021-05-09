call config.bat
@echo off
cls
echo.
echo.

call bats\functions.bat printRed "     MAKE SURE TO EDIT YOUR config.bat FILE BEFORE !"
echo.

IF %BTCZ% == YES (
	echo.
	call bats\functions.bat printYellow "     BitcoinZ Dashboard :"
	echo.
	echo      https://btcz.darkfibermines.com/workers/%BTCZ_WALLET%
	echo.
)

IF %BZE% == YES (
	echo.
	call bats\functions.bat printYellow "     BZEdge Dashboard :"
	echo.
	echo      https://bze.darkfibermines.com/workers/%BZE_WALLET%
	echo.	
)


IF %LTZ% == YES (
	echo.
	call bats\functions.bat printYellow "     LitecoinZ Dashboard :"
	echo.
	echo      https://ltz.darkfibermines.com/workers/%LTZ_WALLET%
	echo.	
)

IF %FOXD% == YES (
	echo.
	call bats\functions.bat printYellow "     FOXD Coin Dashboard :"
	echo.
	echo      https://foxd.darkfibermines.com/workers/%FOXD_WALLET%
	echo.	
)

IF %YEC% == YES (
	echo.
	call bats\functions.bat printYellow "     YCash Dashboard :"
	echo.
	echo      https://yec.darkfibermines.com/workers/%YEC_WALLET%
	echo.	
)

IF %BEAM% == YES (
	echo.
	call bats\functions.bat printYellow "     BEAM Dashboard :"
	echo.
	echo      https://beam.darkfibermines.com/workers/%BEAM_WALLET%
	echo.	
)

IF %FLUX% == YES (
	echo.
	call bats\functions.bat printYellow "     FLUX Dashboard :"
	echo.
	echo      https://flux.darkfibermines.com/workers/%FLUX_WALLET%
	echo.	
)

IF %SPACE% == YES (
	echo.
	call bats\functions.bat printYellow "     Space Coin Dashboard :"
	echo.
	echo      https://space.darkfibermines.com/workers/%SPACE_WALLET%
	echo.	
)

IF %BZC% == YES (
	echo.
	call bats\functions.bat printYellow "     Bitzec Coin Dashboard :"
	echo.
	echo      https://bzc.darkfibermines.com/workers/%BZC_WALLET%
	echo.	
)

IF %ZCL% == YES (
	echo.
	call bats\functions.bat printYellow "     ZClassic Dashboard :"
	echo.
	echo      https://zcl.darkfibermines.com/workers/%ZCL_WALLET%
	echo.	
)

IF %ZER% == YES (
	echo.
	call bats\functions.bat printYellow "     ZERO Dashboard :"
	echo.
	echo      https://zer.darkfibermines.com/workers/%ZER_WALLET%
	echo.	
)

IF %XSG% == YES (
	echo.
	call bats\functions.bat printYellow "     Tent Dashboard :"
	echo.
	echo      https://xsg.darkfibermines.com/workers/%XSG_WALLET%
	echo.	
)

IF %VDL% == YES (
	echo.
	call bats\functions.bat printYellow "     Vidilum Dashboard :"
	echo.
	echo      https://vdl.darkfibermines.com/workers/%VDL_WALLET%
	echo.	
)

IF %RVN% == YES (
	echo.
	call bats\functions.bat printYellow "     RavenCoin Dashboard :"
	echo.
	echo      https://rvn2.darkfibermines.com/workers/%RVN_WALLET%
	echo.
)


echo.
echo.
call bats\functions.bat printGreen "     Bye ! Thanks for using DarkHash"
echo.
pause >nul