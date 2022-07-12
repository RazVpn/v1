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

echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC
echo -e "\e[${back_text}                            SYSTEM MENU                           "$NC
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC 
echo -e  "\e[${text} [  1 ] ADD/CHANGE DOMAIN VPS"
echo -e  "\e[${text} [  2 ] CHANGE DNS SERVER"
echo -e  "\e[${text} [  3 ] RENEW V2RAY AND XRAY CERTIFICATION"
echo -e  "\e[${text} [  4 ] WEBMIN MENU"
echo -e  "\e[${text} [  5 ] CHECK RAM USAGE"
echo -e  "\e[${text} [  6 ] SPEEDTEST VPS"
echo -e  "\e[${text} [  7 ] DISPLAY SYSTEM INFORMATION"
echo -e  "\e[${text} [  8 ] CHECK STREAM GEO LOCATION"
echo -e  "\e[${text} [  9 ] BANDWIDTH USAGE"
echo -e  "\e[${text} [ 10 ] CHANGE PASSWORD VPS"
echo -e  "\e[${text} [ 11 ] ON/OFF AUTO REBOOT VPS"
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC
echo -e "\e[${back_text}                           BANDWIDTH USAGE                        "$NC
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC 
echo -e "\e[${text} TRAFFIC           TODAY          YESTERDAY          MONTH"  
echo -e "\e[${text} UPLOAD            $today_tx $today_txv        $yesterday_tx  $yesterday_txv         $month_tx $month_txv" 
echo -e "\e[${text} DOWNLOAD          $today_rx $today_rxv        $yesterday_rx $yesterday_rxv         $month_rx $month_rxv" 
echo -e "\e[${text} TOTAL             $today $today_v        $yesterday $yesterday_v         $month $month_v"$NC 
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC
echo -e "\e[${text} [  0 ] EXIT TO MENU"
echo -e "\e[${line}═════════════════════════════════════════════════════════════════"$NC
echo -e "\e[${text}Click [ CTRL + C ] Or X For Exit"
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " system
echo -e "\e[0m"
case $system in
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
    passwd
    ;;
    11)
    autoreboot
    ;;
    x)
    exit
    ;;
	0)
    sleep 0.5
    clear
    menu
    ;;
    *)
   echo -e "ERROR!! Please Enter an Correct Number"
   sleep 1
   clear
   system
   ;;
   esac
