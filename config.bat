@echo off

:: TIME is in HOURS. If you don't specify a time for a coin, this time will be used
set SWITCH_EVERY_HOUR=1
:: Set your worker name here. You can enter any name you want, no space or symbols
set WORKER_NAME=helium
:: If you have an AMD cardn set to YES
set USING_AMD=NO
:: If you intend on mining BEAM and you have a NVIDIA card with 4G, set to YES
set NVIDIA_4GO_CARD=YES

:: BEAM Coin (BEAM)
set BEAM=NO
set BEAM_WALLET=355a5704b7e81caa7550b8af849e7354f899064ef507d6b930532dc5078aefc3f8a
set BEAM_MINING_TIME=
:: BitcoinZ (BTCZ)
set BTCZ=YES
set BTCZ_WALLET=t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN
set BTCZ_MINING_TIME=
:: Bitzec (BZC)
set BZC=NO
set BZC_WALLET=t1W2JvfbE1ranBcPfDJ7jbuKjc4Ck8y3QyM
set BZC_MINING_TIME=
:: BZEdge (BZE)
set BZE=NO
set BZE_WALLET=t1ddWRt39Mnp3X12o35icVx3mWzVYjUHLAd
set BZE_MINING_TIME=
:: Zelcash (FLUX)
set FLUX=NO
set FLUX_WALLET=t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN
set FLUX_MINING_TIME=
:: FOXDCoin (FOXD)
set FOXD=NO
set FOXD_WALLET=F7uKVqX8GmJ8sdX3uxHQGPnkGxqHZ5mMu9
set FOXD_MINING_TIME=
:: LitecoinZ (LTZ)
set LTZ=NO
set LTZ_WALLET=L1GT3uYXeR49NCpxuFyX6LjutKmGXoVaXQD
set LTZ_MINING_TIME=3
:: RavenCoin (RVN)
set RVN=YES
set RVN_WALLET=RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z
set RVN_MINING_TIME=6
:: Space Coin (SPACE)
set SPACE=NO
set SPACE_WALLET=RRiiAaPUE5B4pqtUQehmBymfqazsWTwYu5
set SPACE_MINING_TIME=
:: Vidulum (VDL)
set VDL=NO
set VDL_WALLET=v1RCWRCSKmvoSNb9t4F2NMVR4t6CxxRAeE3
set VDL_MINING_TIME=
:: Snowgem TENT (XSG)
set XSG=NO
set XSG_WALLET=s1Ytqk64DSFsEPNNPWHZrgEmdiVqAcGsW5T
set XSG_MINING_TIME=
:: Ycash (YEC)
set YEC=NO
set YEC_WALLET=s1Ub5y7irLd61npqxDuNz4Xm6eFmTHqDkiz
set YEC_MINING_TIME=
:: Z Classic (ZCL)
set ZCL=NO
set ZCL_WALLET=t1ZUYircJEBcZtMqjjwoJsBbRXaxAZkAQBp
set ZCL_MINING_TIME=
:: ZERO Coin (ZER)
set ZER=NO
set ZER_WALLET=t1ZcGDr4RL2KP3caD24gWJvwBRpy7iXEhRx
set ZER_MINING_TIME=

:: DONATIONS ARE OFF BY DEFAULT !! NO FEES
:: DONATE=YES if you want to donate. Thanks!
set DONATE=NO