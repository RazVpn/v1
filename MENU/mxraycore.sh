#!/bin/bash
clear
red='\e[0;31m'
green='\e[0;32m'
NC='\e[0m'

echo -e "${red}PANEL XRAY CORE" 
echo -e "=========================================================================="
echo -e "${red}XRAY VMESS"
echo -e "=========================================================================="
echo -e "${red}[  1 ] CREATE NEW USER"
echo -e "${red}[  2 ] DELETE ACTIVE USER"
echo -e "${red}[  3 ] EXTEND ACTIVE USER"
echo -e "${red}[  4 ] CHECK USER LOGIN"
echo -e "${red}[  5 ] CHANGE PORT XRAY VMESS"
echo -e "=========================================================================="
echo -e "${red}XRAY VLESS"
echo -e "=========================================================================="
echo -e "${red}[  6 ] CREATE NEW USER"
echo -e "${red}[  7 ] DELETE ACTIVE USER"
echo -e "${red}[  8 ] EXTEND ACTIVE USER"
echo -e "${red}[  9 ] CHECK USER LOGIN"
echo -e "${red}[ 10 ] CHANGE PORT XRAY VLESS"
echo -e "=========================================================================="
echo -e "${red}XRAY VLESS XTLS"
echo -e "=========================================================================="
echo -e "${red}[ 11 ] CREATE NEW USER"
echo -e "${red}[ 12 ] DELETE ACTIVE USER"
echo -e "${red}[ 13 ] EXTEND ACTIVE USER"
echo -e "${red}[ 14 ] CHECK USER LOGIN"
echo -e "${red}[ 15 ] CHANGE PORT XRAY XTLS"
echo -e "=========================================================================="
echo -e "${red}XRAY VLESS GRPC"
echo -e "=========================================================================="
echo -e "${red}[ 16 ] CREATE NEW USER"
echo -e "${red}[ 17 ] DELETE ACTIVE USER"
echo -e "${red}[ 18 ] EXTEND ACTIVE USER"
echo -e "${red}[19 ] CHECK USER LOGIN"
echo -e "${red}[ 20 ] CHANGE PORT XRAY GRPC"
echo -e "=========================================================================="
echo -e "${red}[  0 ] EXIT TO MENU"
echo -e "=========================================================================="
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " xraycore
echo -e "\e[0m"
case $xraycore in
    1)
	add-xvmess
	;;
	2)
	del-xvmess
	;;
	3)
	renew-xvmess
	;;
	4)
	cek-xvmess
	;;
	5)
	port-xvmess
	;;
	6)
	add-xvless
	;;
	7)
	del-xvless
	;;
	8)
	renew-xvless
	;;
	9)
	cek-xvless
	;;
	10)
	port-xvless
    ;;
	11)
	add-xtls
	;;
	12)
	del-xtls
	;;
    13)
    renew-xtls
    ;;
    14)
    cek-xtls
    ;;
    15)
    port-xtls
    ;;
    16)
    add-grpc
    ;;
    17)
    del-grpc
    ;;
    18)
    renew-grpc
    ;;
    19)
    cek-grpc
    ;;
    20)
    port-grpc
    ;;
	0)
    clear
    menu
    ;;
    *)
   echo -e "ERROR!! Please Enter an Correct Number"
   sleep 1
   clear
   mxraycore
   ;;
   esac
