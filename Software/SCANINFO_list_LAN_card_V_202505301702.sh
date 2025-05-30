#!/bin/bash
#!/usr/bin/ffmpeg

	echo "-------------------------===== Start of bash ====-------------------------"
	printf '\033[8;27;90t'	## minimum of 90 for graphics.
	version=2025-05-30_Friday_17:02:07

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

	#spd-say "Lost byte soft"

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
if command -v netstat >/dev/null 2>&1
	then
		echo "netstat installed continue."
		dpkg -s net-tools | grep Version
		echo "${green} ████████████████ OK ████████████████ ${reset}"
		echo
		netstat=1
	else
		echo "You don't have ' netstat ' installed."
		echo "Add with : sudo apt-get install netstat"
		echo
		echo "${red}████████████████ Dependency error ████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to continue anyway (Some informations could not be shown) !"
		echo
		echo
		netstat=0
	fi

## -------------------------===== Separator =====-------------------------
part=1
echo -------------------------===== Section $part =====-------------------------
echo "The core/code program. Scan Info Hardware"
	echo
	#netstat=0

## -------------------------========================-------------------------

	hostname -A
	name=$HOSTNAME
	rm "/dev/shm/ScanInfo_LAN_$name.txt" 2> /dev/null
	echo --------------------======= START =======-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "Local name(s); if you have multiples card you will have multiples names here."
	echo "Pc Name:"
	echo "Local name(s); if you have multiples card you will have multiples names here." >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "Pc Name:" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	hostname -A
	hostname -A >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo Machine informations:
	echo Machine informations: >> /dev/shm/ScanInfo_LAN_$name.txt
	hostnamectl
	hostnamectl >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "External ip:"
	echo "External ip:" >> /dev/shm/ScanInfo_LAN_$name.txt
	dig @resolver4.opendns.com myip.opendns.com +short
	dig @resolver4.opendns.com myip.opendns.com +short >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "Dns server:"
	echo "Dns server:" >> /dev/shm/ScanInfo_LAN_$name.txt
	cat /etc/resolv.conf
	cat /etc/resolv.conf  >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "Root ip:"
	echo "Root ip:" >> /dev/shm/ScanInfo_LAN_$name.txt
	hostname -i
	hostname -i >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "Local ip(s):"
	echo "Local ip(s):" >> /dev/shm/ScanInfo_LAN_$name.txt
	hostname -I
	hostname -I >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	
	LAN=$(ip -br l | awk '$1 !~ "lo|vir|wl" { print $1}')
	
	echo "Lacal ip v6:"
	echo "Lacal ip v6:" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	ip addr show dev $LAN | sed -e's/^.*inet6 \([^ ]*\)\/.*$/\1/;t;d'
	ip addr show dev $LAN | sed -e's/^.*inet6 \([^ ]*\)\/.*$/\1/;t;d' >> /dev/shm/ScanInfo_LAN_$name.txt
	#echo "ip addr show dev $LAN | sed -e's/^.*inet6 \([^ ]*\)\/.*$/\1/;t;d'" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	
	echo Ip v6 address:
	echo Ip v6 address: >> /dev/shm/ScanInfo_LAN_$name.txt
	ip -6 addr
	ip -6 addr >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "MAC adress; if you have multiples card you will have multiples mac here."
	echo MAC adress:
	echo MAC adress: >> /dev/shm/ScanInfo_LAN_$name.txt
	cat /sys/class/net/*/address
	cat /sys/class/net/*/address >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "Gateway + link speed"
	echo "Gateway + link speed" >> /dev/shm/ScanInfo_LAN_$name.txt
	ip route
	ip route >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt

	name1=$(ip -br l | awk '$1 !~ "lo|vir|wl" { print $1}')
	speed1=$(cat /sys/class/net/$name1/speed)

	echo "Speed : $speed1"
	echo "Speed : $speed1" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
echo Kernel Interface table
	echo
	if [ "$netstat" -eq "1" ]; then
		echo netstat -i:
		echo netstat -i: >> /dev/shm/ScanInfo_LAN_$name.txt
		netstat -i
		netstat -i >> /dev/shm/ScanInfo_LAN_$name.txt
		echo
		echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
		echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt
		echo
		echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	fi
	
	echo "eno1 is the onboard Ethernet (wired) adapter. lo is a loopback device, You can imagine it"
	echo "as a virtual network device that is on all systems, even if they aren't connected to any network."
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo

echo -------------------------========================-------------------------
	echo Ip route:
	echo Ip route: >> /dev/shm/ScanInfo_LAN_$name.txt
	#routerip1=$(ip route show 0.0.0.0/0 dev eno1 | cut -d\  -f3)
	routerip1=$(ip route show 0.0.0.0/0)
	routerip1=$(ip route show 0.0.0.0/0) >> /dev/shm/ScanInfo_LAN_$name.txt
	echo Route 1 : $routerip1
	echo Route 1 : $routerip1 >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "Lan card(s):"
	echo "Lan card(s):" >> /dev/shm/ScanInfo_LAN_$name.txt
	lspci | egrep -i --color 'network|ethernet'
	lspci | egrep -i --color 'network|ethernet' >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo --------------------===================-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo "Wake On Lan: (Only wired is monitored here)"
	echo "Wake On Lan: (Only wired is monitored here)" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "Not working without password"
	echo "Not working without password" >> /dev/shm/ScanInfo_LAN_$name.txt
	
	## to get the lan system name
	lan_inter=$(ip route get 8.8.8.8 | awk -- '{printf $5}')
	echo
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo "Type: sudo ethtool $lan_inter | grep -i wake"
	echo "Type: sudo ethtool $lan_inter | grep -i wake" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	
	if zenity --question --text="Do you want admin questions ?"
		then
			PASSWORD=$(zenity --height=300 --width=400 --password --title "Insert password or cancel to continue.")
			#echo $PASSWORD
			echo $PASSWORD | sudo -S ethtool eno1 | grep -i wake
			echo $PASSWORD | sudo -S ethtool eno1 | grep -i wake >> /dev/shm/ScanInfo_LAN_$name.txt
			fi
	
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo sudo ethtool $LAN | grep -i wake
	echo ethtool $lan_inter | grep -i wake >> /dev/shm/ScanInfo_LAN_$name.txt
	echo
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	cat /etc/systemd/network/50-wired.link
	#echo sudo gedit /etc/systemd/network/50-wired.link
	#echo sudo gedit /etc/systemd/network/50-wired.link >> /dev/shm/ScanInfo_LAN_$name.txt
	cat /etc/systemd/network/50-wired.link >> /dev/shm/ScanInfo_LAN_$name.txt
	#echo
	#echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	#cat /etc/systemd/network/50-wired.link
	#cat /etc/systemd/network/50-wired.link >> /dev/shm/ScanInfo_LAN_$name.txt
	
	echo
	echo "	" >> /dev/shm/ScanInfo_LAN_$name.txt
	echo --------------------======= END =======-------------------- >> /dev/shm/ScanInfo_LAN_$name.txt

echo -------------------------========================-------------------------
	echo Saving...
	if zenity --no-wrap --question --text="Do you want to save informations on desktop ? (Yes or No (Suggest Yes))\n\n\tIf you choose yes the program will close automatically."
		then
			cp /dev/shm/ScanInfo_LAN_$name.txt /$HOME/Desktop/ScanInfo_LAN_$name.txt
			noquit=0
			echo To name : $HOME/Desktop/ScanInfo_HARD_$name.txt
		else
			rm "/dev/shm/ScanInfo_LAN_$name.txt" 2> /dev/null
			noquit=1
		fi
	
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out. Version 5.21"

	printf '\033[8;25;90t'		## Will resize the window.

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
		#spd-say "$name have errors."
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
		#spd-say "$name finished without errors."
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
