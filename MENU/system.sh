#!/bin/bash
clear
red='\e[0;31m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$(curl https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $MYIP | awk '{print $4}')
if [ $MYIP = $IZIN ]; then
    echo -e ""
    clear
else
  echo -e ""
    echo -e "${red}ACCESS DENIED...PM TELEGRAM OWNER${NC}"
    exit 1
fi
clear
sleep 0.5
echo -e  " ${red}═════════════════════════════════════════════════════════════════ "
echo -e  "${red}|                        [ SYSTEM MENU ]                          | "                                                                                             
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${red}[  1 ] ADD/CHANGE DOMAIN VPS${NC}"
echo -e  " ${red}[  2 ] CHANGE DNS SERVER${NC}"
echo -e  " ${red}[  3 ] RENEW V2RAY AND XRAY CERTIFICATION${NC}"
echo -e  " ${red}[  4 ] WEBMIN MENU${NC}"
echo -e  " ${red}[  5 ] CHECK RAM USAGE${NC}"
echo -e  " ${red}[  6 ] SPEEDTEST VPS${NC}"
echo -e  " ${red}[  7 ] DISPLAY SYSTEM INFORMATION${NC}"
echo -e  " ${red}[  8 ] CHECK STREAM GEO LOCATION${NC}"
echo -e  " ${red}[  9 ] BANDWIDTH USAGE"
echo -e  " ${red}[ 10 ] ENCRYPT FILE"
echo -e  " ${red}[  0 ] MENU"
echo -e  " "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${red}Click [ CTRL + C ] Or x For Exit Menu "

echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " menu
echo -e "\e[0m"
 case $menu in
   1)
   add-host
   ;;
   2)
   mdns
   ;;
   3)
   recert-xrayv2ray
   ;;
   4)
   wbmn
   ;;
   5)
   ram
   ;;
   6)
   speedtest
   ;;
   7)
   info
   ;;
   8)
   nf
   ;;
   9)
   vnstat
   ;;
   10)
   enc
   ;;
   0)
   menu
   ;;
   x)
   sleep 0.5
   clear
   jinggo
   ;;
   *)
   echo -e "ERROR!! Please Enter an Correct Number"
   sleep 1
   clear
   system
   ;;
   esac
