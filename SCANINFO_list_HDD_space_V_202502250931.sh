#!/bin/bash
#!/usr/bin/ffmpeg

	printf '\033[8;50;107t'		# will resize the window.

echo -------------------------===== Start of bash ====-------------------------

	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")	## time now
	id=$(echo $PPID)			## current process id of the bash process

	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	reset=`tput sgr0`

	## General purposes variables. Needed before program to random variables.
	## All variables must be 0
	part=0		## Don't change this value.
	primeerror=0	## Ending error detector, do not change.
	error=0		## Test error, do not change.
	
	## All variables must be 0 or 1
	automatic=0	## automatic without (at least minimal) dialog box. (0 or 1)
	debug=0		## test debug. (0 or 1 debug mode)
	noquit=0	## noquit option. (0 or 1)
	lowercase=0	## Change all to lowercase option. (0 or 1)

	## Auto-generated variables. Do not change
	random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
	random2=$RANDOM

	echo
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror id=$id"
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo
	echo "Running job file : $me"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo Specific softwares variables, you can change theses variables.
	echo
	echo automatic=0 , 0 or 1 , 0 deactivated , 1 activated
	automatic=0
	echo noquit=1 , 0 or 1 , 0 deactivated , 1 activated
	noquit=1
	echo
## Simple function small bar to wait 3 sec.
	## Version 1.04
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.
	## Part of code came from here https://github.com/rabb1t/spinners , Created by Pavel Raykov aka 'rabbit' / 2018-11-08 (c)

	functionsmallbar()
		{
		if [ "$debug" -eq 0 ]; then
			#echo
			width=40
			perc=0
			speed="0.1" # seconds
			inc="$(echo "100/${width}" | bc -ql)"
			#echo -n "	Wake Up.. 0% "
			echo -n "	Wait... "

			while [ $width -ge 0 ]; do
				printf "\e[0;93;103m%s\e[0m %.0f%%" "0" "${perc}"
				sleep $speed
				let width--
				perc="$(echo "${perc}+${inc}" | bc -ql)"
		
				if [ ${perc%%.*} -lt 10 ]; then
					printf "\b\b\b"
				else
					printf "\b\b\b\b"
				fi
			done
			echo
		else
			echo ${blue} ████████████████████ DEBUG BYPASS ALL BARS ████████████████████${reset}
		fi
		}

##-------------------------=========== SEPARATOR =============-------------------------
	## Software name, what is this, version, informations.
	echo
	echo Name : "SCANINFO list HARDWARE"
	echo What it does ?
	echo "Show hardware and informations"
	echo
	echo Name : "SCANINFO list HDD space"
	echo What it does ?
	echo "Show all HDD free space and informations"
	echo
	echo Name : "SCANINFO list LAN card"
	echo What it does ?
	echo "Show all lan card and informations"
	echo
	echo "Informations : (EULA at the end of file, open in text.)"
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	echo

echo -------------------------========================-------------------------
	echo Version compiled on : Also serves as a version
	echo 2025-02-25_Tuesday_09:31:08
echo -------------------------========================-------------------------
if command -v ethtool >/dev/null 2>&1
	then
		echo "You don't have ' ethtool ' installed."
		echo "Add with : sudo apt-get install ethtool"
		echo
		echo "${red}████████████████ Dependency error ████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to continue anyway (Some informations can not shown) !"
		echo
		echo
	else
		echo "ethtool installed continue."
		dpkg -s ethtool | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
	fi

## -------------------------===== Separator =====-------------------------
part=1
echo -------------------------===== Section $part =====-------------------------
echo "The core/code program. Scan Info Hardware"
	echo

## -------------------------========================-------------------------

	echo "Local name(s); if you have multiples card you will have multiples names here."
	echo "Pc Name:"
	hostname -A
	name=$HOSTNAME
	rm "/dev/shm/ScanInfo_HDD_$name.txt" 2> /dev/null
	echo --------------------======= START =======-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "Show all HDD free space and informations" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "Pc Name:"  >> /dev/shm/ScanInfo_HDD_$name.txt
	hostname -A >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo Machine informations:
	echo Machine informations: >> /dev/shm/ScanInfo_HDD_$name.txt
	hostnamectl
	hostnamectl >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo Name , save and mountpoint.
	echo Name , save and mountpoint. >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	
	lsblk
	lsblk >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo ls -lF /dev/disk/by-id/
	echo "ls -lF /dev/disk/by-id/" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	ls -lF /dev/disk/by-id/
	ls -lF /dev/disk/by-id/ >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo "Capacity by disk :"
	echo "Capacity by disk :" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo Manual Capacity sda
	echo Capacity sda >> /dev/shm/ScanInfo_HDD_$name.txt
	lsblk -b --output SIZE -n -d /dev/sda
	echo "lsblk -b --output SIZE -n -d /dev/sda" >> /dev/shm/ScanInfo_HDD_$name.txt
	lsblk -b --output SIZE -n -d /dev/sda  >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo Manual Capacity sdb
	echo Capacity sdb >> /dev/shm/ScanInfo_HDD_$name.txt
	lsblk -b --output SIZE -n -d /dev/sdb
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "lsblk -b --output SIZE -n -d /dev/sdb" >> /dev/shm/ScanInfo_HDD_$name.txt
	lsblk -b --output SIZE -n -d /dev/sdb >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "Each disk Automatic (sda to sdz):"
	for i in /dev/sd[a-z]; do lsblk -b --output SIZE -n -d "$i"; done
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo --------------=============-------------- >> /dev/shm/ScanInfo_HDD_$name.txt
	echo Nvme disk :
	echo Echo Nvme disk : >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "Each disk Automatic (nvme0n1 to nvme0n9):"
	for i in /dev/nvme1n[0-9]; do lsblk -b --output SIZE -n -d "$i"; done
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "Each disk Automatic (nvme1n0 to nvme1n9):"
	for i in /dev/nvme1n[0-9]; do lsblk -b --output SIZE -n -d "$i"; done
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "Each disk Automatic (nvme0n1p0 to nvme0n1p9):"
	for i in /dev/nvme0n1p[0-9]; do lsblk -b --output SIZE -n -d "$i"; done
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo "sensors temp :"
	echo "sensors temp :" >> /dev/shm/ScanInfo_HDD_$name.txt
	sensors
	sensors >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo "sudo hwinfo --disk --listmd (Need sudo passowd)"
	echo "sudo hwinfo --disk --listmd (Need sudo passowd)" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	#sudo hwinfo --disk --listmd
	echo "hwinfo --disk --listmd"

	if zenity --question --text="Do you want admin questions ?"
		then
			PASSWORD=$(zenity --height=300 --width=400 --password --title "Insert password or cancel to continue.")
			#echo $PASSWORD
			echo $PASSWORD | "sudo hwinfo --disk --listmd"
			echo $PASSWORD | "sudo hwinfo --disk --listmd" >> /dev/shm/ScanInfo_HDD_$name.txt
			fi

	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo "Total capacity of HDD present in the system: (Mb)"
	echo "Total capacity of HDD present in the system: (Mb)" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	df | grep '^/dev/' | awk '{s+=$2} END {print s/1048576}'
	df | grep '^/dev/' | awk '{s+=$2} END {print s/1048576}' >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	df -h -t ext4
	df -h -t ext4 >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo "Hdd temp : (Need sudo passowd)"
	echo "Hdd temp : (Need sudo passowd)" : >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	## Need hddtemp
	echo "type for i in /dev/sd[a-z]; do sudo hddtemp "$i"; done"
	echo "type for i in /dev/sd[a-z]; do sudo hddtemp "$i"; done" >> /dev/shm/ScanInfo_HDD_$name.txt
	#for i in /dev/sd[a-z]; do sudo hddtemp "$i"; done
	#for i in /dev/sd[a-z]; do sudo hddtemp "$i"; done >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "for i in /dev/nvme0n1p[0-9]; do sudo hddtemp "$i"; done"
	echo "for i in /dev/nvme0n1p[0-9]; do sudo hddtemp "$i"; done" >> /dev/shm/ScanInfo_HDD_$name.txt
	#for i in /dev/nvme0n1p[0-9]; do sudo hddtemp "$i"; done
	#for i in /dev/nvme0n1p[0-9]; do sudo hddtemp "$i"; done >> /dev/shm/ScanInfo_HDD_$name.txt
	echo "	" >> /dev/shm/ScanInfo_HDD_$name.txt
	echo
	echo --------------------======= END =======-------------------- >> /dev/shm/ScanInfo_HDD_$name.txt

echo -------------------------========================-------------------------
	echo Saving...
	echo To name : /$HOME/Desktop/ScanInfo_HDD_$name.txt
	if zenity --no-wrap --question --text="Do you want to save informations on desktop ? (Yes or No (Suggest Yes))\n\n\tIf you choose yes the program will close automatically."
		then
			cp /dev/shm/ScanInfo_HDD_$name.txt /$HOME/Desktop/ScanInfo_HDD_$name.txt
			autoquit=1
			noquit=0
		else
			rm "/dev/shm/ScanInfo_HDD_$name.txt" 2> /dev/null
		fi

	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out."
	printf '\033[8;26;102t'		## minimum of ? for graphics, will resize the window, if needed.
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror id=$id"
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt100% 100%
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug debugcore=$debugcore error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror id=$id" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt

echo -------------------------===== End of Bash ======-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██         Unknown entry event...         ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "$id - RUNNING : $me"
		echo
		debug
		#functionsmallbar
		noquit=1
	else
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "$id - RUNNING : $me"
	fi

	if [ "$noquit" -eq "1" ]; then
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to exit !"
		echo
		fi

	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to continue !"
		echo
		fi

	echo
	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	sleep 0.5
	echo
	functionsmallbar
	echo
	sleep 1
	exit

## -----===== Start of eula =====-----

	End-user license agreement (eula)

 	JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE
 	
 	Version 3.1415926532 (January 2022)
 	
 	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
    	
	Everyone is permitted to copy and distribute verbatim or modified copies of
 	this license document.
 	
 	As is customary and in compliance with current global and interplanetary
 	regulations, the author of these pages disclaims all liability for the
 	consequences of the advice given here, in particular in the event of partial
 	or total destruction of the material, Loss of rights to the manufacturer
 	warranty, electrocution, drowning, divorce, civil war, the effects of radiation
 	due to atomic fission, unexpected tax recalls or encounters with
 	extraterrestrial beings elsewhere.
 	
 	YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN.
 	
 	LostByteSoft no copyright or copyleft we are in the center.
 	
 	You can send your request and your Christmas wishes to this address:
 	
 		Père Noël
 		Pôle Nord, Canada
 		H0H 0H0

## -----===== End of file =====-----
