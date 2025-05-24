#!/bin/bash
#!/usr/bin/ffmpeg

	echo "-------------------------===== Start of bash ====-------------------------"
	printf '\033[8;27;90t'	## minimum of 90 for graphics.
	version=2025-05-24_Saturday_08:01:19

	## "0 or 1 , 0 deactivated , 1 activated ## All general variables must be 0 or 1"
		findsubfolders=0
		lowercase=0
		detox=0
		automatic=1
		debug=0
		debugcore=0
		minimize=0
		maximize=0
		reseize=1
		noquit=0

	printf '\033[8;27;90t'	## minimum of 90 for graphics.

##-------------------------=========== SEPARATOR =============-------------------------

	## Lead-in Version 6.05
	echo
	echo
	## Time, host name, file name, pid.
		start=$SECONDS
		now=$(date +"%Y-%m-%d_%A_%H:%M:%S")	## time now
		hostname=$(cat /etc/hostname)
		#hostname="${hostname%-pc}"
		me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
		id=$(echo $PPID)			## current process id of the bash process
	## General purposes variables. Needed before program to random variables.
		logs=1		## Logging
	## All general variables must be 0, DO NOT CHANGE.
		part=0		## Don't change this value.
		primeerror=0	## Ending error detector, do not change.
		error=0		## Test error, do not change.
	## Auto-generated variables. DO NOT CHANGE.
		random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
		random2=$RANDOM
	## Colors codes
		red=$(tput setaf 1)
		green=$(tput setaf 2)
		yellow=$(tput setaf 11)
		blue=$(tput setaf 12)
		orange=$(tput setaf 9)
		reset=$(tput sgr0)

##-------------------------=========== SEPARATOR =============-------------------------

	spd-say "Lost byte soft"

	echo "${green}  ░▒▓█▓▒░      ░▒▓██████▓▒░ ░▒▓███████▓▒░▒▓████████▓▒░ "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░   ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${green}  ░▒▓████████▓▒░▒▓██████▓▒░░▒▓███████▓▒░   ░▒▓█▓▒░     ${reset}"
	echo
	echo "${green}	  ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░ ░▒▓██████▓▒░   ░▒▓█▓▒░   ░▒▓██████▓▒░   "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓████████▓▒░ ${reset}"
	echo
	echo "${green}		   ░▒▓███████▓▒░░▒▓██████▓▒░░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		   ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░    ░▒▓█▓▒░     "
	echo "${green}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		  ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░         ░▒▓█▓▒░  ${reset}"
	echo
	sleep 1

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "$me"
	echo
	echo "Version : $version"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "You are running this script from : $hostname"
	echo
	echo "Running software file : $(dirname "$0")/"
	echo
	echo "Read me for this file : (EULA at the end of file, open in text.)"
	echo
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2"
	echo "		primeerror=$primeerror lowercase=$lowercase id=$id reseize=$reseize"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Color codes / Informations."
	echo
	echo  "${green}	████████████████     ALL OK / ACTIVE      ████████████████ ${reset}"
	echo   "${blue}	████████████████      INFORMATION(S)      ████████████████ ${reset}"
	echo "${yellow}	████████████████   ATTENTION / INACTIVE   ████████████████ ${reset}"
	echo    "${red}	████████████████   FATAL ERROR / OFFLINE  ████████████████ ${reset}"
	echo

echo -------------------------========================-------------------------
## Simple function small bar to wait 3 sec. This bar does work with debian 12 & 13. Version 1.05

	functionsmallbar() {
		speed=0.2
		if [ "$debug" -eq 0 ]; then
			echo -ne ${yellow}'	TimeToQuit |                        |    (0%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██                    |   (10%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████                  |   (20%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████                |   (30%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████              |   (40%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████            |   (50%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████          |   (60%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████████        |   (70%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████████      |   (80%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████████████    |   (90%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████████████  |  (100%)\r'${reset}
			sleep $speed
			echo -ne '\n'
		else
			echo ${yellow} ████████████████████ DEBUG BYPASS functionfastbar ████████████████████${reset}
			sleep $speed
		fi
		}

## -------------------------===== Separator =====-------------------------
## Simple function sleep bar to wait. Wait the time you specified in code.
	## Version 1.26
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.
	## Replace the nothing show sleep with a better looking bar.
	## SPECIFY A SLEEP TIME IN SECONDS BEFORE FUNCTION IN CODE. Default sleep is 3 second if not specified.

	## In code exemple:
	## sleep=3		## Use minimum 1 as a vriable.
	## functionsleepbar

	## Local var.
	sleep=3
	sleep1=0
	sleep2=0

functionsleepbar() {

	if [ "$sleep" -ge "1" ]; then
			sleep1=$(echo "scale=2 ; "$sleep"/20" | bc)
			sleep2=$(echo "scale=2 ; "$sleep"/10" | bc)
		else
			sleep=3
			sleep1=$(echo "scale=2 ; "$sleep"/20" | bc)
			sleep2=$(echo "scale=2 ; "$sleep"/10" | bc)
		fi

	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|	|	|	|	|	|        (0%)\r"${reset}
	sleep "$sleep2"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|██	|	|	|	|	|        (5%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|█████	|	|	|	|	|	(10%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|	|	|	|	|	(15%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|█	|	|	|	|	(20%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███	|	|	|	|	(25%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|█████	|	|	|	|	(30%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|	|	|	|	(35%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|█	|	|	|	(40%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███	|	|	|	(45%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|█████	|	|	|	(50%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|	|	|	(55%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|█	|	|	(60%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███	|	|	(65%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|█████	|	|	(70%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|	|	(75%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|█	|	(80%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|███	|	(90%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${blue}	|███████|███████|███████|███████|█████	|	(95%)\r"${reset}
	sleep "$sleep1"
	echo -ne ${green}"Sleep time $sleep sec. ${green}	|███████|███████|███████|███████|███████|      (100%)\r"${reset}
	sleep "$sleep1"
	echo -ne '\n'
	sleep=0
	sleep1=0
	sleep2=0
	}

##-------------------------=========== SEPARATOR =============-------------------------
echo
part=$((part+1))
echo -------------------------===== Section $part =====-------------------------
	echo Check installed requirements !
	echo
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
echo "Software lead out. Version 5.20"

	if [ "$reseize" -eq "1" ]; then
		printf '\033[8;25;100t'		## Will resize the window.
		fi

## -------------------------===== Separator =====-------------------------

	echo
	echo "Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2"
	echo
	echo "Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic"
	echo "	debug=$debug debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit"
	echo
	echo -------------------------===== End of Bash ======-------------------------
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo " " >>/dev/shm/logs.txt
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2" >>/dev/shm/logs.txt
	echo "	Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic debug=$debug debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt
	echo "--------------------====== SEPARATOR ========--------------------" >>/dev/shm/logs.txt

## -------------------------===== Separator =====-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		printf '\033[8;35;90t'		## Will resize the window.
		spd-say "$name have errors."
		echo
		echo "${red}████████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${red}██                                        ██${reset}	${blue}██                                    ██${reset}"
		echo "${red}██     Unknown entry event... ERROR(S)    ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${red}██                                        ██${reset}	${blue}██                                    ██${reset}"
		echo "${red}████████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "Terminated : $me"
		echo
		#debug
		sleep=5
		functionsleepbar
		noquit=1
	else
		printf '\033[8;18;90t'		## Will resize the window.
		spd-say "$name finished without errors."
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "Terminated : $me"
	fi

	if [ "$noquit" -eq "1" ]; then
		printf '\033[8;19;90t'		## Will resize the window.
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press any key to EXIT or press X to close this windows !"
		echo
		fi

	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press any key to EXIT or press X to close this windows !"
		echo
		fi

	echo
	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	echo
	functionsmallbar
	echo
	sleep 0.5
	exit 0

## -------------------------===== Start of eula =====-------------------------

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

## -------------------------===== End of file =====-------------------------
