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
MYIP=$(wget -qO- icanhazip.com)
IZIN=$(curl https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $MYIP | awk '{print $4}')
if [ $MYIP = $IZIN ]; then
  echo -e ""
  clear
else
  echo -e ""
  echo -e "${green}ACCESS DENIED...PM TELEGRAM OWNER ${NC}"
  exit 1
fi
clear
IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/v2ray/domain)
city=$(curl -s https://ipinfo.io/json | grep -o 'city": "[^"]*' | grep -o '[^"]*$')
TIME=`curl -sS ip-api.com | grep -w "timezone" | awk '{print $3}' | cut -d'"' -f2 | tee -a /etc/afak.conf`
ISP=`curl -sS ip-api.com | grep -w "isp" | awk '{print $3,$4,$5,$6,$7,$8,$9}' | cut -d'"' -f2 | cut -d',' -f1 | tee -a /etc/afak.conf`
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cekxray="$(openssl x509 -dates -noout </etc/v2ray/v2ray.crt)"
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
name=$(curl -sS https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $IPVPS | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/RazVpn/ip/main/ipvps | grep $IPVPS | awk '{print $3}')
c_xtls=$(grep -oc '### [^ ]*' /etc/xray/vless-direct.json | cut -d' ' -f2)
c_xvmess=$(grep -oc '### [^ ]*' /etc/xray/v2ray-tls.json | cut -d' ' -f2)
c_xvless=$(grep -oc '### [^ ]*' /etc/xray/vless-tls.json | cut -d' ' -f2)
c_grpc=$(grep -oc '### [^ ]*' /etc/xray/vless-grpc.json | cut -d' ' -f2)
c_vmess=$(grep -oc '### [^ ]*' /etc/v2ray/config.json | cut -d' ' -f2)
c_vless=$(grep -oc '### [^ ]*' /etc/v2ray/vless.json | cut -d' ' -f2)
total_xray=$(($c_xtls + $c_xvmess + $c_xvless + $c_grpc))
total_v2ray=$(($c_vmess + $c_vless))
total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
vnstat -i eth0 >/root/t1
bulan=$(date +%b)
today=$(vnstat -i eth0 | grep today | awk '{print $8}')
today_v=$(vnstat -i eth0 | grep today | awk '{print $9}')
today_rx=$(vnstat -i eth0 | grep today | awk '{print $2}')
today_rxv=$(vnstat -i eth0 | grep today | awk '{print $3}')
today_tx=$(vnstat -i eth0 | grep today | awk '{print $5}')
today_txv=$(vnstat -i eth0 | grep today | awk '{print $6}')
if [ "$(grep -wc ${bulan} /root/t1)" != '0' ]; then
  bulan=$(date +%b)
  month=$(vnstat -i eth0 | grep "$bulan " | awk '{print $9}')
  month_v=$(vnstat -i eth0 | grep "$bulan " | awk '{print $10}')
  month_rx=$(vnstat -i eth0 | grep "$bulan " | awk '{print $3}')
  month_rxv=$(vnstat -i eth0 | grep "$bulan " | awk '{print $4}')
  month_tx=$(vnstat -i eth0 | grep "$bulan " | awk '{print $6}')
  month_txv=$(vnstat -i eth0 | grep "$bulan " | awk '{print $7}')
else
  bulan=$(date +%Y-%m)
  month=$(vnstat -i eth0 | grep "$bulan " | awk '{print $8}')
  month_v=$(vnstat -i eth0 | grep "$bulan " | awk '{print $9}')
  month_rx=$(vnstat -i eth0 | grep "$bulan " | awk '{print $2}')
  month_rxv=$(vnstat -i eth0 | grep "$bulan " | awk '{print $3}')
  month_tx=$(vnstat -i eth0 | grep "$bulan " | awk '{print $5}')
  month_txv=$(vnstat -i eth0 | grep "$bulan " | awk '{print $6}')
fi
if [ "$(grep -wc yesterday /root/t1)" != '0' ]; then
  yesterday=$(vnstat -i eth0 | grep yesterday | awk '{print $8}')
  yesterday_v=$(vnstat -i eth0 | grep yesterday | awk '{print $9}')
  yesterday_rx=$(vnstat -i eth0 | grep yesterday | awk '{print $2}')
  yesterday_rxv=$(vnstat -i eth0 | grep yesterday | awk '{print $3}')
  yesterday_tx=$(vnstat -i eth0 | grep yesterday | awk '{print $5}')
  yesterday_txv=$(vnstat -i eth0 | grep yesterday | awk '{print $6}')
else
  yesterday=NULL
  yesterday_v=NULL
  yesterday_rx=NULL
  yesterday_rxv=NULL
  yesterday_tx=NULL
  yesterday_txv=NULL
fi
rm -f /root/t1
clear
# PROVIDED
creditt=$(cat /root/provided)
# BANNER COLOUR
banner_colour=$(cat /etc/banner)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR ON TOP
text=$(cat /etc/text)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
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
echo -e "\e[$text Premium Script"
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC
echo -e "\e[${back_text}                  \e[30m•\e[$box SERVER INFORMATION\e[30m •                         \e[m"
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC
echo -e "\e[${text} Ip Vps                      :  $IPVPS"
echo -e "\e[${text} Domain Name                 :  $DOMAIN${NC}"
echo -e "\e[${text} Os Version                  :  $(hostnamectl | grep "Operating System" | cut -d ' ' -f5-)"${NC}
echo -e "\e[${text} Kernel Version              :  $(uname -r)${NC}"
echo -e "\e[${text} Cpu Model                   : $cname"
echo -e "\e[${text} Number Of Cores             :  $cores"
echo -e "\e[${text} Cpu Usage                   :  $cpu_usage1 %"
echo -e "\e[${text} Cpu Frequency               : $freq MHz"
echo -e "\e[${text} Total Amount Of Ram         :  $tram MB"
echo -e "\e[${text} System Uptime               :$up"
echo -e "\e[${text} Isp/Provider                :  $ISP"
echo -e "\e[${text} City                        :  $city${NC}"
echo -e "\e[${text} Time Location               :  $TIME"
echo -e "\e[${text} Client Name                 :  $name${NC}"
echo -e "\e[${text} Exp Script Access           :  $exp${NC}"
echo -e "\e[${text} Exp Date Cert V2ray/Xray    :  $expxray${NC}"
echo -e "\e[${text} Provided  By                :  $creditt"
echo -e "\e[${text} Script Version              :  Ichikaa (V1)"$NC
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC 
echo -e "\e[${text} TOTAL USER        SSH/OVPN          XRAY            V2RAY"$NC 
echo -e "\e[${text}                     $total_ssh               $total_xray                $total_v2ray"$NC 
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC 
echo -e "\e[${text} TRAFFIC           TODAY          YESTERDAY          MONTH"  
echo -e "\e[${text} UPLOAD            $today_tx $today_txv        $yesterday_tx  $yesterday_txv         $month_tx $month_txv" 
echo -e "\e[${text} DOWNLOAD          $today_rx $today_rxv      $yesterday_rx $yesterday_rxv         $month_rx $month_rxv" 
echo -e "\e[${text} TOTAL             $today $today_v      $yesterday $yesterday_v         $month $month_v"$NC 
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC 
echo -e "\e[${back_text}                      \e[30m•\e[$box MAIN MENU\e[30m •                              \e[m"
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC 
echo -e " \e[${number} [  1 ] $NC \e[${below} PANEL SSH & OPENVPN      \e[${number} [  7 ] $NC \e[${below}REBOOT VPS"$NC
echo -e " \e[${number} [  2 ] $NC \e[${below} PANEL WIREGUARD          \e[${number} [  8 ] $NC \e[${below}SYSTEM MENU"$NC
echo -e " \e[${number} [  3 ] $NC \e[${below} PANEL SSR & SS           \e[${number} [  9 ] $NC \e[${below}CHECK SERVICE ERROR"$NC
echo -e " \e[${number} [  4 ] $NC \e[${below} PANEL V2RAY CORE         \e[${number} [ 10 ] $NC \e[${below}MENU THEMES"$NC               
echo -e " \e[${number} [  5 ] $NC \e[${below} PANEL XRAY CORE"$NC                 
echo -e " \e[${number} [  6 ] $NC \e[${below} PANEL TROJAN GFW"$NC
echo -e "\e[${line}═════════════════════════════════════════════════════════════════${NC}" 
echo -e " \e[${below} Premium VPS by $creditt"$NC 
echo -e " \e[${below} Thank You For Using Script By @Ichikaa01"$NC 
echo -e "\e[${line}═════════════════════════════════════════════════════════════════${NC}"
echo -e ""
echo -e "\e[${below} Click [ CTRL+ C ] Or X to Exit Menu"
echo -e " "
echo -e "\e[$below "
read -p "     Please select an option :  " menu 
echo -e ""
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
  mv2raycore
  ;;
5)
  mxraycore
  ;;
6)
  mtrojan
  ;;
7)
  reboot
  ;;
8)
  system 
  ;;
9)
  checksystem
  ;;
10)
  menu-theme
   ;;
 x)
  sleep 0.5
  clear
  jinggo
  ;;
*)
  echo -e "ERROR!! Please Enter a Correct Number"
  sleep 1
  clear
  menu
  ;;
esac
