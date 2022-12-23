#/bin/bash

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

####################################################################################

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

#####################################################################################

echo "Please choose one of the following options."
echo " [1] - nmap."
echo " [2] - Start Lookup."
echo " [3] - Username Lookup."
echo $long

read nmap;

case $nmap in
        1) 
echo "Entter your ip:"
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

################################################################################################
          2)
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
open https://www.youtube.com/results?search_query=$First+$last
;;
esac

################################################################################################

echo -e "${RED}WARNING THIS ONLY LOOKS IT UP YOU MUST DO MANUEL SEARCH ${NC}\n" 
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
echo -e "${GREEN}Zoomit:${NC} https://www.zoomit.ir/user/$username"

echo $long

#similarformat as sherlock.py

##########################################################################################################


