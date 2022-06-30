#!/bin/bash
clear
red='\e[0;31m'
green='\e[0;32m'
blue='\e[0;34m'
cyan='\e[0;36m'
purple='\e[0;35m'
red='\e[0;33m'
black='\e[0;30m'
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
neofetch
sleep 0.5
clear
echo -e " "
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )	
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
swap=$( free -m | awk 'NR==4 {print $2}' )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/v2ray/domain)
cekxray="$(openssl x509 -dates -noout < /etc/v2ray/v2ray.crt)"                                      
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
name=$(curl -sS https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $IPVPS | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $IPVPS | awk '{print $3}')

echo -e  "${red}           ╦╔═╗╦ ╦╦╦╔═╔═╗╔═╗  ╔═╗╔═╗╦═╗╦  ╦╦╔═╗╔═╗  "${NC}
echo -e  "${red}           ║║  ╠═╣║╠╩╗╠═╣╠═╣  ╚═╗║╣ ╠╦╝╚╗╔╝║║  ║╣   "${NC}
echo -e  "${red}           ╩╚═╝╩ ╩╩╩ ╩╩ ╩╩ ╩  ╚═╝╚═╝╩╚═ ╚╝ ╩╚═╝╚═╝    "${NC}
echo -e  "${red}                 PREMIUM-SERVER-BY-RAZVPN   "${NC}
echo -e  " "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  "${red}|                        [ INFORMATION ]                          | "${NC}                                                                                                   
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${red}IP VPS NUMBER               : $IPVPS${NC}"
echo -e  " ${red}DOMAIN                      : $DOMAIN${NC}"
echo -e  " ${red}SYSTEM UPTIME               : $up${NC}"
echo -e  " ${red}OS VERSION                  : `hostnamectl | grep "Operating System" | cut -d ' ' -f5-`${NC}"
echo -e  " ${red}KERNEL VERSION              : `uname -r`${NC}"
echo -e  " ${red}CPU MODEL                   :$cname${NC}"
echo -e  " ${red}NUMBER OF CORES             : $cores${NC}"	
echo -e  " ${red}CPU FREQUENCY               :$freq MHz${NC}"
echo -e  " ${red}TOTAL AMOUNT OF RAM         : $tram MB${NC}"
echo -e  " ${red}EXP DATE CERT V2RAY/XRAY    : $expxray${NC}"
echo -e  " ${red}CLIENT NAME                 : $name${NC}"
echo -e  " ${red}EXP SCRIPT ACCSESS          : $exp${NC}"
echo -e  " ${red}PROVIDER                    : RazVpn | Ichikaa${NC}"
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${red}MAIN MENU${NC} "                                       
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${red}[  1 ] SSH & OPENVPN${NC}" 
echo -e  " ${red}[  2 ] WIREGUARD${NC}" 
echo -e  " ${red}[  3 ] SHADOWSOCKS R${NC}" 
echo -e  " ${red}[  4 ] SHADOWSOCKS OBFS${NC}"
echo -e  " ${red}[  5 ] V2RAY CORE${NC}" 
echo -e  " ${red}[  6 ] XRAY CORE${NC}" 
echo -e  " ${red}[  7 ] TROJAN GFW${NC}"  
echo -e  "  "
echo -e  " ═════════════════════════════════════════════════════════════════ "
echo -e  " ${red}SYSTEM MENU${NC} "       
echo -e  " ═════════════════════════════════════════════════════════════════ "                            
echo -e  " ${red}[  8 ] ADD/CHANGE DOMAIN VPS${NC}"
echo -e  " ${red}[  9 ] CHANGE DNS SERVER${NC}"
echo -e  " ${red}[ 10 ] RENEW V2RAY AND XRAY CERTIFICATION${NC}"
echo -e  " ${red}[ 11 ] WEBMIN MENU${NC}"
echo -e  " ${red}[ 12 ] CHECK RAM USAGE${NC}"
echo -e  " ${red}[ 13 ] REBOOT VPS${NC}"
echo -e  " ${red}[ 14 ] SPEEDTEST VPS${NC}"
echo -e  " ${red}[ 15 ] DISPLAY SYSTEM INFORMATION${NC}"
echo -e  " ${red}[ 16 ] CHECK STREAM GEO LOCATION${NC}"
echo -e  " ${red}[ 17 ] CHECK SERVICE ERROR${NC}"
echo -e  " ${red}[ 18 ] UPDATE SCRIPT${NC}"
echo -e  " ${red}[ 19 ] BANDWIDTH USAGE${NC}"
echo -e  " ${red}[ 20 ] ENCRYPT FILE.SH ONLY${NC} "
echo -e  " "
echo -e  " ═════════════════════════════════════════════════════════════════"
echo -e  " ${red}[  0 ] REBOOT SERVER${NC}  "
echo -e  " ${red}[  x ] EXIT MENU${NC}  "
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
   read -n 1 -s -r -p "Press any key to back on menu"
   ;;
   20)
   enc
   ;;
   0)
   reboot
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
   menu
   ;;
   esac
