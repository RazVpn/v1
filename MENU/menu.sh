#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
blue='\e[0;34m'
blue_b='\e[0;94m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$(curl https://raw.githubusercontent.com/RazVpn/v1/main/IP | grep $MYIP | awk '{print $4}')
if [ $MYIP = $IZIN ]; then
    echo -e ""
    clear
else
  echo -e ""
    echo -e "${green}ACCESS DENIED...PM TELEGRAM OWNER${NC}"
    exit 1
fi
echo -e " "
IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/v2ray/domain)
cekxray="$(openssl x509 -dates -noout < /etc/v2ray/v2ray.crt)"                                      
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
name=$(curl -sS https://raw.githubusercontent.com/RazVpn/v1/main/IP | grep $IPVPS | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/RazVpn/v1/main/IP | grep $IPVPS | awk '{print $3}')

echo -e  "${blue_b}           ╦╔═╗╦ ╦╦╦╔═╔═╗╔═╗  ╔═╗╔═╗╦═╗╦  ╦╦╔═╗╔═╗  "${NC}
echo -e  "${blue_b}           ║║  ╠═╣║╠╩╗╠═╣╠═╣  ╚═╗║╣ ╠╦╝╚╗╔╝║║  ║╣   "${NC}
echo -e  "${blue_b}           ╩╚═╝╩ ╩╩╩ ╩╩ ╩╩ ╩  ╚═╝╚═╝╩╚═ ╚╝ ╩╚═╝╚═╝    "${NC}
echo -e  "${red}                 PREMIUM-SERVER-BY-RAZVPN   "${NC}
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  "${red}|                           INFORMATION                           | "${NC}                                                                                                   
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${green}IP VPS NUMBER               : $IPVPS${NC}"
echo -e  " ${green}DOMAIN                      : $DOMAIN${NC}"
echo -e  " ${green}OS VERSION                  : `hostnamectl | grep "Operating System" | cut -d ' ' -f5-`"${NC}
echo -e  " ${green}KERNEL VERSION              : `uname -r`${NC}"
echo -e  " ${green}EXP DATE CERT V2RAY/XRAY    : $expxray${NC}"
echo -e  " ${green}CLIENT NAME                 : $name${NC}"
echo -e  " ${green}EXP SCRIPT ACCSESS          : $exp${NC}"
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${green}MAIN MENU${NC} "                                       
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " [  1 ] SSH & OPENVPN" 
echo -e  " [  2 ] WIREGUARD" 
echo -e  " [  3 ] SHADOWSOCKS R" 
echo -e  " [  4 ] SHADOWSOCKS OBFS"
echo -e  " [  5 ] V2RAY CORE" 
echo -e  " [  6 ] XRAY CORE" 
echo -e  " [  7 ] TROJAN GFW"  
echo -e  "  "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${green}SYSTEM MENU${NC} "       
echo -e  " ═════════════════════════════════════════════════════════════════ "                            
echo -e  " [  8 ] ADD/CHANGE DOMAIN VPS"
echo -e  " [  9 ] CHANGE DNS SERVER"
echo -e  " [ 10 ] RENEW V2RAY AND XRAY CERTIFICATION"
echo -e  " [ 11 ] WEBMIN MENU"
echo -e  " [ 12 ] CHECK RAM USAGE"
echo -e  " [ 13 ] REBOOT VPS"
echo -e  " [ 14 ] SPEEDTEST VPS"
echo -e  " [ 15 ] DISPLAY SYSTEM INFORMATION"
echo -e  " [ 16 ] CHECK STREAM GEO LOCATION"
echo -e  " [ 17 ] CHECK SERVICE ERROR"
echo -e  " [ 18 ] UPDATE SCRIPT"
echo -e  " [ 19 ] BANDWIDTH USAGE"
echo -e  "  "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${green}CHANGE PORT${NC} "       
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " [ 20 ] CHANGE PORT STUNNEL4"
echo -e  " [ 21 ] CHANGE PORT OPENVPN"
echo -e  " [ 22 ] CHANGE PORT SQUID"

echo -e  " ═════════════════════════════════════════════════════════════════" 
echo -e  " ${green}[  0 ] EXIT MENU${NC}  "
echo -e  " ═════════════════════════════════════════════════════════════════"
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " menu
echo -e "\e[0m"
 case $menu in
   1)
   mssh
   ;;
   2)
   mwg
   ;;
   3)
   mssr
   ;;
   4)
   mss
   ;;
   5)
   mv2raycore
   ;;
   6)
   mxraycore
   ;;
   7)
   mtrojan
   ;;
   8)
   add-host
  


   ;;
   9)
   mdns
   ;;
   10)
   recert-xrayv2ray
   ;;
   11)
   wbmn
   ;;
   12)
   ram
   ;;
   13)
   reboot
   ;;
   14)
   speedtest
   ;;
   15)
   info
   ;;
   16)
   nf
   ;;
   17)
   checksystem  
   ;;
   18)
   update  
   ;;  
   19)
   vnstat
   ;; 
   0)
   sleep 0.5
   clear
   jinggo
   ;;
   *)
   echo -e "ERROR!! Please Enter an Correct Number"
   sleep 1
   clear
   menu
   ;;
   esac
