#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'

echo -e "${red}PANEL V2RAY CORE"
echo -e "=========================================================================="
echo -e "V2RAY VMESS"
echo -e "=========================================================================="
echo -e "${red}[   1 ] CREATE NEW USER"
echo -e "${red}[   2 ] DELETE ACTIVE USER"
echo -e "${red}[   3 ] EXTEND ACTIVE USER"
echo -e "${red}[   4 ] CHECK USER LOGIN"
echo -e "${red}[   5 ] CHANGE PORT V2RAY VMESS "
echo -e "=========================================================================="
echo -e "${red}V2RAY VLESS"
echo -e "=========================================================================="
echo -e "${red}[   6 ] CREATE NEW USER"
echo -e "${red}[   7 ] DELETE ACTIVE USER"
echo -e "${red}[   8 ] EXTEND ACTIVE USER"
echo -e "${red}[   9 ] CHECK USER LOGIN"
echo -e "${red}[ 10 ] CHANGE PORT V2RAY VLESS"
echo -e "=========================================================================="
echo -e "${red}[ 0 ] EXIT TO MENU"
echo -e "==========================================================================${NC}"
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " v2raycore
echo -e "\e[0m"
case $v2raycore in
    1)
    add-ws
    ;;
    2)
    del-ws
    ;;
    3)
    renew-ws
    ;;
    4)
    cek-ws
    ;;
    5)
    port-ws
    ;;
    6)
    add-vless
    ;;
    7)
    del-vless
    ;;
    8)
    renew-vless
    ;;
    9)
    cek-vless
    ;;
    10)
    port-vless
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
   mv2raycore
   ;;
   esac
