#!/bin/bash
clear
red='\e[0;31m'
Bred='\e[0;41m'
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
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/v2ray/domain)
cekxray="$(openssl x509 -dates -noout < /etc/v2ray/v2ray.crt)"                                      
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
name=$(curl -sS https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $IPVPS | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $IPVPS | awk '{print $3}')

echo -e  "${red}                   ╦╔═╗╦ ╦╦╦╔═╔═╗╔═╗  ╔═╗╔═╗╦═╗╦  ╦╦╔═╗╔═╗  "
echo -e  "${red}                   ║║  ╠═╣║╠╩╗╠═╣╠═╣  ╚═╗║╣ ╠╦╝╚╗╔╝║║  ║╣   "
echo -e  "${red}                   ╩╚═╝╩ ╩╩╩ ╩╩ ╩╩ ╩  ╚═╝╚═╝╩╚═ ╚╝ ╩╚═╝╚═╝    "
echo -e  "${red}                     PREMIUM-SERVER-BY-$name   "
echo -e  " "
echo -e  " ════════════════════════════════════════════════════════════════════════ "
echo -e  " ${Bred}                              [ INFORMATION ]                           ${NC}"                                                                                             
echo -e  " ${red}════════════════════════════════════════════════════════════════════════${NC} "
echo -e  " ${red}Ip Vps                         : $IPVPS${NC}"
echo -e  " ${red}Domain                         : $DOMAIN${NC}"
echo -e  " ${red}Isp Provider                   : $ISP${NC}"
echo -e  " ${red}City                           : $CITY${NC}"
echo -e  " ${red}Time Location                  : $WKT${NC}"
echo -e  " ${red}Os Version                     : `hostnamectl | grep "Operating System" | cut -d ' ' -f5-`${NC}"
echo -e  " ${red}Kernel Version                 : `uname -r`${NC}"
echo -e  " ${red}Cpu Model                      :$cname${NC}"
echo -e  " ${red}Number of core                 : $cores${NC}"	
echo -e  " ${red}Cpu Frequency                  :$freq MHz${NC}"
echo -e  " ${red}Total Amount Of Ram            : $tram MB${NC}"
echo -e  " ${red}Exp Date Cert V2ray/Xray       : $expxray"
echo -e  " ${red}Client                         : $name${NC}"
echo -e  " ${red}Expire Script Date             : $exp${NC}"
echo -e  " ${red}Provided By                    : RazVpn | Ichikaa"
echo -e  " ${red}Script Version                 : VERSION 1"
echo -e  " ════════════════════════════════════════════════════════════════════════ "
echo -e  " ${Bred}                               [ MAIN MENU ]                            ${NC}"                                       
echo -e  " ${red}════════════════════════════════════════════════════════════════════════ "
echo -e  " ${red}[  1 ] PANEL SSH & OPENVPN                 [  8 ] REBOOT VPS$  ${NC}"
echo -e  " ${red}[  2 ] PANEL WIREGUARD                     [  9 ] UPDATE SCRIPT${NC}"
echo -e  " ${red}[  3 ] PANEL SHADOWSOCKS R                 [ 10 ] CHECK SERVICE ERROR  ${NC}"
echo -e  " ${red}[  4 ] PANEL SHADOWSOCKS OBFS              [ 11 ] SYSTEM MENU ${NC}"  
echo -e  " ${red}[  5 ] PANEL V2RAY CORE         " 
echo -e  " ${red}[  6 ] PANEL XRAY CORE            "            
echo -e  " ${red}[  7 ] PANEL TROJAN GFW        "                 
echo -e  "  "
echo -e  " ════════════════════════════════════════════════════════════════════════ "
echo -e  " ${red} PREMIUM SERVER BY $name"       
echo -e  " THANKS FOR USING AUTOSCRIPT BY RAZVPN"       
echo -e  " ════════════════════════════════════════════════════════════════════════ "                            
echo -e  " ${red}Click [ CTRL + C ] Or x For Exit Menu "
echo -e  "  "
echo -e "\e[1;31m"
read -p  " Please select an option :  " menu
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
   reboot
   ;;
   9)
   update  
   ;;  
   10)
   checksystem
    ;;
   11)
   system
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
