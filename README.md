# DarkHash
Script for mining every coin on Dark Fiber Mines

## CURRENTLY NOT WORKING : BEAM, FOXD, BZC !

You can mine as many coins as you want, and switch between them every X hours.

## ADD THE MINERS TO THE DARKHASH FOLDER
You need to add the miners executable in the DarkHash folder, so you'll be sure to use a correct and safe version of your miner.
 - For T-rex, copy your t-rex.exe in the DarkHash folder. The name need to be exactly "t-rex.exe"
- For Gminer, copy your miner.exe in the DarkHash folder. The name need to be exactly "miner.exe"

### Edit the darkhash.bat

## WALLETS 
Put your wallet addresses accordingly (Short names for the coins, RVN=ravencoin, LTZ=litecoinz, etc)

If you don't have a specific wallet for a coin, leave empty (see BEAM_WALLET for example)


## WORKER NAME 
Put your worker name in WORKER_NAME. (Line 46)
By default it's "helium" but you can choose any name you want.


## CHOOSE WHAT COINS TO MINE
Put YES in front of every coin you want to mine, NO if you don't want to mine it.

Example with RavenCoin, BitcoinZ, BZEdge :
	
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


## CHOOSE FOR HOW LONG YOU WANT TO MINE BEFORE SWITCHING COIN

By default, it will switch coins every hour.
To change this, change the SWITCH_EVERY_HOUR variable. (Line 45)

Example 1 (switch every 6 hours):
	
	set SWITCH_EVERY_HOUR=6
	
Example 2 (switch every 12 hours):

	set SWITCH_EVERY_HOUR=12


## DONATE
### By default, donations are OFF ! Don't worry, I don't take any fees !
If you want to donate to the developper, change the DONATE variable to YES (Line 49)

After mining all the coins you selected, it will mine for 10min on the RVN2 pool on the developper wallet

If you choose to switch every 6 hours and you selected 10 coins, you will mine 10mn every 60hours
### The mining donation will ALWAYS BE at the end of the cycle ! You will ALWAYS mine your coins first !
