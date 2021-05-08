
# DarkHash

Script for mining every coin on Dark Fiber Mines

Choose what coins you want to mine and the script will switch between them for you !
You can choose the time before switching coins, by default it will switch every hour.
#### CURRENTLY NOT WORKING : BEAM, FOXD, BZC, ZCL !

# How to use

### FIRST, ADD THE MINERS TO THE DARKHASH FOLDER
You need to add the miners executable in the DarkHash folder, so you'll be sure to use a correct and safe version of your miner.
 - For T-rex, copy your t-rex.exe in the DarkHash folder. The name need to be exactly "t-rex.exe"
- For Gminer, copy your miner.exe in the DarkHash folder. The name need to be exactly "miner.exe"

### THEN, EDIT THE config.bat FILE

## CHOOSE WHAT COINS TO MINE

Put YES in front of every coin you want to mine, NO if you dont wan't to mine it.
If you want to mine a coin, you will need to have a wallet address for it.
No need to remove wallet addresses if you want to stop mining a coin
If you don't have a specific wallet for a coin, leave empty


Example configuration for mining BTCZ, LTZ and RVN  :

	:: BEAM Coin (BEAM)
	set BEAM=NO
	set BEAM_WALLET=
	:: BitcoinZ (BTCZ)
	set BTCZ=YES
	set BTCZ_WALLET=t1ZQ68aM3q81gkUB9G6Fi5CXmujZQysyDEN
	:: Bitzec (BZC)
	set BZC=NO
	set BZC_WALLET=t1W2JvfbE1ranBcPfDJ7jbuKjc4Ck8y3QyM
	:: BZEdge (BZE)
	set BZE=NO
	set BZE_WALLET=
	:: Zelcash (FLUX)
	set FLUX=NO
	set FLUX_WALLET=
	:: FOXDCoin (FOXD)
	set FOXD=NO
	set FOXD_WALLET=
	:: LitecoinZ (LTZ)
	set LTZ=YES
	set LTZ_WALLET=L1GT3uYXeR49NCpxuFyX6LjutKmGXoVaXQD
	:: RavenCoin (RVN)
	set RVN=YES
	set RVN_WALLET=RSx44cGP1Ju2mccwJfE5CByADYHYqA2U8z
	:: Space Coin (SPACE)
	set SPACE=NO
	set SPACE_WALLET=
	:: Vidulum (VDL)
	set VDL=NO
	set VDL_WALLET=
	:: Snowgem TENT (XSG)
	set XSG=NO
	set XSG_WALLET=
	:: Ycash (YEC)
	set YEC=NO
	set YEC_WALLET=s1Ub5y7irLd61npqxDuNz4Xm6eFmTHqDkiz
	:: Z Classic (ZCL)
	set ZCL=NO
	set ZCL_WALLET=
	:: ZERO Coin (ZER)
	set ZER=NO
	set ZER_WALLET=

## WORKER NAME 
Put your worker name in WORKER_NAME
By default it's "helium" but you can choose any name you want.

	set WORKER_NAME=yourWorkerName

## CHOOSE FOR HOW LONG YOU WANT TO MINE BEFORE SWITCHING COIN

By default, it will switch coins every hour.
To change this, change the SWITCH_EVERY_HOUR variable.

Example 1 (switch every 6 hours):
	
	set SWITCH_EVERY_HOUR=6
	
Example 2 (switch every 12 hours):

	set SWITCH_EVERY_HOUR=12


## DONATE
### By default, donations are OFF ! Don't worry, I don't take any fees !
If you want to donate to the developper, change the DONATE variable to YES like this :

	set DONATE=YES

After mining all the coins you selected, it will mine for 10min on the RVN2 pool on the developper wallet

If you choose to switch every 6 hours and you selected 10 coins, you will mine 10mn every 60hours
### The mining donation will ALWAYS BE at the end of the cycle ! You will ALWAYS mine your coins first !
