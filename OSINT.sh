#/bin/bash

#This is my OSINT script inspired by Discover, 
#MAKER: mrblue

##GLOBAL VARIABLE##

long='================================================================================'
medium='============================================================'
short='========================================'


####################################################################################

#banner
echo $medium
echo "   ____       _       __     __              __"
echo "  / __ \_____(_)___  / /_   / /_____  ____  / /"
echo " / / / / ___/ / __ \/ __/  / __/ __ \/ __ \/ / "
echo "/ /_/ (__  ) / / / / /_   / /_/ /_/ / /_/ / /  "
echo "\____/____/_/_/ /_/\__/   \__/\____/\____/_/   "
echo "By: mrblue" 
# http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
echo $medium
#####################################################################################

echo "Please choose one of the following options."
echo " 1 - nmap."
echo " 2 - Start Lookup."


echo $medium

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
echo "Enter first and last name"
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
            




#echo "spiderfoot server"
#echo "enter start:"
#read spider

#echo $short

#if [ $spider ==  "start" ]
#then
#      echo "Starting..."
#      cd /opt/spiderfoot-4.0 && python3 sf.py -l 127.0.0.1:5001 
      
#fi
#;;
#esac