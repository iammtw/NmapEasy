#! /bin/bash

#Logo=====================================================================================
echo "                "
echo "                "

echo -e "\e[1;36m      ███╗   ██╗███╗   ███╗ █████╗ ██████╗     ███████╗ █████╗ ███████╗██╗   ██╗ \e[0m "
echo -e "\e[1;36m      ████╗  ██║████╗ ████║██╔══██╗██╔══██╗    ██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝ \e[0m "
echo -e "\e[1;36m      ██╔██╗ ██║██╔████╔██║███████║██████╔╝    █████╗  ███████║███████╗ ╚████╔╝  \e[0m "
echo -e "\e[1;36m      ██║╚██╗██║██║╚██╔╝██║██╔══██║██╔═══╝     ██╔══╝  ██╔══██║╚════██║  ╚██╔╝   \e[0m "
echo -e "\e[1;36m      ██║ ╚████║██║ ╚═╝ ██║██║  ██║██║         ███████╗██║  ██║███████║   ██║    \e[0m "
echo -e "\e[1;36m      ╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝    \e[0m "






echo "                "
echo -e "                  \e[1;33m                 =================================================================     \e[0m  "
echo -e  "\e[1;33m  					This is a Simple Bash Script to Make Usage of Nmap Easier \e[0m "
echo -e "\e[1;33m  					This Script has been Coded by Dhrubajyoti Dey \e[0m                 "
echo -e "\e[1;33m  					This Script has been ReCoded by Mtw Abbaxi \e[0m                     "
echo -e "\e[1;33m 					Please use against target LEGALLY/ETHICAL \e[0m                     "
echo -e "\e[1;33m 					Github:  https://github.com/mtwabbaxi                     "
echo -e "                  \e[1;33m                 =================================================================     \e[0m  "

#===========================================================================================
echo "                "
echo "                "

read -p "Please enter the IP Address of the target: " ip
echo "                "
echo "                "

echo -e "\e[1;33m   Plesae choose what you want to perform: \e[0m"
echo "                "
echo "                "
echo -e "\e[1;33m 			1. Simple port scan(Verbose) \e[0m"
echo -e "\e[1;33m 			2. OS detection(verbose) \e[0m"
echo -e "\e[1;33m 			3. Stealth Scan(verbose) \e[0m"
echo -e "\e[1;33m 			4. ping scan(verbose) \e[0m"
echo -e "\e[1;33m 			5. TCP SYN ping(verbose) \e[0m"
echo -e "\e[1;33m 			6. Aggressive scan(verbose) \e[0m"
echo -e "\e[1;33m 			7. Traceroute(Verbose) \e[0m"
echo -e "\e[1;33m 			8. ARP ping(verbose) \e[0m"
echo -e "\e[1;33m 			9. ICMP echo ping(verbose) \e[0m"

#===========================================================================================

echo "                "
read -p "Enter your choice: " ch
echo "                "
echo -e "\e[1;33m 1. Save the output to a text file \e[0m"
echo -e "\e[1;33m 2. Continue in the terminal \e[0m"
echo "                "
read -p "Enter your opinion: " save

if [ $save == 1 ]
then
read -p "Please specify the full path along with the file name (add .txt at the end of file name): " path
echo "                "
echo "                "
if [ $ch == 1 ]
then
nmap -vv $ip > $path
elif [ $ch == 2 ]
then
nmap -vv -O $ip > $path
elif [ $ch == 3 ]
then
nmap -vv -sS $ip > $path
elif [ $ch == 4 ]
then
nmap -vv -sn $ip > $path
elif [ $ch == 5 ]
then
nmap -vv -PS $ip > $path
elif [ $ch == 6 ]
then
nmap -vv -A $ip >$path
elif [ $ch == 7 ]
then
nmap -vv -traceroute $ip > $path
elif [ $ch == 8 ]
then
nmap -vv -PR $ip > $path
elif [ $ch == 9 ]
then
nmap -vv -PE $ip > $path
fi
echo "                "
echo "                "

echo -e "\e[1;33mAll the output has been saved to: $path \e[0m"

elif [ $save == 2 ]
then
if [ $ch == 1 ]
then
nmap -vv $ip
elif [ $ch == 2 ]
then
nmap -vv -O $ip
elif [ $ch == 3 ]
then
nmap -vv -sS $ip
elif [ $ch == 4 ]
then
nmap -vv -sP $ip
elif [ $ch == 5 ]
then
nmap -vv -PS $ip
elif [ $ch == 6 ]
then
nmap -vv -A $ip
elif [ $ch == 7 ]
then
nmap -vv -traceroute $ip
elif [ $ch == 8 ]
then
nmap -vv -PR $ip
elif [ $ch == 9 ]
then
nmap -vv -PE $ip
fi
else
	echo "                "
    echo -e "\e[1;31m Please enter correct option! \e[0m"
fi
echo -e "\e[1;33m Happy Hacking..!!! \e[0m"
echo -e "\e[1;33m Good Bye..!!! \e[0m"
