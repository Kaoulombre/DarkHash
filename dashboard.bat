call config.bat
@echo off
cls
echo.
echo.

echo     MAKE SURE TO EDIT YOUR config.bat FILE BEFORE !
echo.

IF %BTCZ% == YES (
	echo.
	echo     BitcoinZ Dashboard :
	echo.
	echo     https://btcz.darkfibermines.com/workers/%BTCZ_WALLET%
	echo.
)

IF %BZE% == YES (
	echo.
	echo     BZEdge Dashboard :
	echo.
	echo     https://bze.darkfibermines.com/workers/%BZE_WALLET%
	echo.	
)


IF %LTZ% == YES (
	echo.
	echo     LitecoinZ Dashboard :
	echo.
	echo     https://ltz.darkfibermines.com/workers/%LTZ_WALLET%
	echo.	
)

IF %FOXD% == YES (
	echo.
	echo     FOXD Coin Dashboard :
	echo.
	echo     https://foxd.darkfibermines.com/workers/%FOXD_WALLET%
	echo.	
)

IF %YEC% == YES (
	echo.
	echo     YCash Dashboard :
	echo.
	echo     https://yec.darkfibermines.com/workers/%YEC_WALLET%
	echo.	
)

IF %BEAM% == YES (
	echo.
	echo     BEAM Dashboard :
	echo.
	echo     https://beam.darkfibermines.com/workers/%BEAM_WALLET%
	echo.	
)

IF %FLUX% == YES (
	echo.
	echo     FLUX Dashboard :
	echo.
	echo     https://flux.darkfibermines.com/workers/%FLUX_WALLET%
	echo.	
)

IF %SPACE% == YES (
	echo.
	echo     Space Coin Dashboard :
	echo.
	echo     https://space.darkfibermines.com/workers/%SPACE_WALLET%
	echo.	
)

IF %BZC% == YES (
	echo.
	echo     Bitzec Coin Dashboard :
	echo.
	echo     https://bzc.darkfibermines.com/workers/%BZC_WALLET%
	echo.	
)

IF %ZCL% == YES (
	echo.
	echo     ZClassic Dashboard :
	echo.
	echo     https://zcl.darkfibermines.com/workers/%ZCL_WALLET%
	echo.	
)

IF %ZER% == YES (
	echo.
	echo     ZERO Dashboard :
	echo.
	echo     https://zer.darkfibermines.com/workers/%ZER_WALLET%
	echo.	
)

IF %XSG% == YES (
	echo.
	echo     Tent Dashboard :
	echo.
	echo     https://xsg.darkfibermines.com/workers/%XSG_WALLET%
	echo.	
)

IF %VDL% == YES (
	echo.
	echo     Vidilum Dashboard :
	echo.
	echo     https://vdl.darkfibermines.com/workers/%VDL_WALLET%
	echo.	
)

IF %RVN% == YES (
	echo.
	echo     RavenCoin Dashboard :
	echo.
	echo     https://rvn2.darkfibermines.com/workers/%RVN_WALLET%
	echo.
)


echo.
echo.
echo Bye ! Thanks for using DarkHash
pause >nul
