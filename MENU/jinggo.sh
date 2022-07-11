#!/bin/bash
clear
back_text='\e[0;47;30m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[\e[${number}'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[\e[${number}'
line='\e[91m'
Lgreen='\e[92m'
GREEN='\033[0;32m'
ORANGE='\033[0;\e[${number}'
LIGHT='\033[0;37m'
NC='\e[0m'

# BANNER COLOUR
banner_colour=$(cat /etc/banner)
# BANNER
banner=$(cat /usr/bin/bannerku)
ascii=$(cat /usr/bin/test)
result_banner() {
	figlet -f "$ascii" "$banner"
}
clear
echo ""
printf "\e[${banner_colour}"
result_banner                                                                           
 
echo ""
echo -e  "${red}TYPE 'menu' TO GO TO MAIN OR 'exit' TO LOGOUT"${NC}
echo -e  ""

