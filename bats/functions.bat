@echo off
call:%~1 %2
goto:eof

:printGreen
echo [32m %~1 [0m
goto:eof

:printRed
echo [31m %~1 [0m
goto:eof

:printYellow
echo [33m %~1 [0m
goto:eof

:logStartLoop
(
	echo.
	echo %date% %time:~0,5% : Start of a new cycle :
)>>log.txt
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

:listing
call:printGreen " Welcome to DarkHash !"
echo.
call:printYellow " This is your mining selection based on your current configuration :"
echo.

IF %BEAM% == YES (
	IF NOT "%BEAM_MINING_TIME%" == "" (
		call:printYellow "	BEAM for %BEAM_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	BEAM for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %BTCZ% == YES (
	IF NOT "%BTCZ_MINING_TIME%" == "" (
		call:printYellow "	BTCZ for %BTCZ_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	BTCZ for %SWITCH_EVERY_HOUR% hour(s)"
	)
)


IF %BZC% == YES (
	IF NOT "%BZC_MINING_TIME%" == "" (
		call:printYellow "	BZC for %BZC_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	BZC for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %BZE% == YES (
	IF NOT "%BZE_MINING_TIME%" == "" (
		call:printYellow "	BZE for %BZE_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	BZE for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %FLUX% == YES (
	IF NOT "%FLUX_MINING_TIME%" == "" (
		call:printYellow "	FLUX for %FLUX_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	FLUX for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %FOXD% == YES (
	IF NOT "%FOXD_MINING_TIME%" == "" (
		call:printYellow "	FOXD for %FOXD_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	FOXD for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %LTZ% == YES (
	IF NOT "%LTZ_MINING_TIME%" == "" (
		call:printYellow "	LTZ for %LTZ_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	LTZ for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %RVN% == YES (
	IF NOT "%RVN_MINING_TIME%" == "" (
		call:printYellow "	RVN for %RVN_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	RVN for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %SPACE% == YES (
	IF NOT "%SPACE_MINING_TIME%" == "" (
		call:printYellow "	SPACE for %SPACE_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	SPACE for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %VDL% == YES (
	IF NOT "%VDL_MINING_TIME%" == "" (
		call:printYellow "	VDL for %VDL_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	VDL for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %XSG% == YES (
	IF NOT "%XSG_MINING_TIME%" == "" (
		call:printYellow "	XSG for %XSG_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	XSG for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %YEC% == YES (
	IF NOT "%YEC_MINING_TIME%" == "" (
		call:printYellow "	YEC for %YEC_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	YEC for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %ZCL% == YES (
	IF NOT "%ZCL_MINING_TIME%" == "" (
		call:printYellow "	ZCL for %ZCL_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	ZCL for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %ZER% == YES (
	IF NOT "%ZER_MINING_TIME%" == "" (
		call:printYellow "	ZER for %ZER_MINING_TIME% hour(s)"
	) ELSE (
		call:printYellow "	ZER for %SWITCH_EVERY_HOUR% hour(s)"
	)
)

IF %DONATE% == YES (
	call:printYellow "	Donation activated, Thanks!"
) ELSE (
	call:printYellow "	No donation, no fees"
)
echo.
echo.
call:printGreen " DarkHash is starting"
echo.
goto:eof