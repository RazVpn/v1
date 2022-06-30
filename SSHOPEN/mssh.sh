#!/bin/bash
clear
red='\e[1;31m'
NC='\e[0m'

echo -e ""
echo -e  " ${red} ════════════════════════════════════════════════════════════ " 
echo -e  "               SSH & OPENVPN MENU.                    " 
echo -e  "  ════════════════════════════════════════════════════════════ ${NC} " 
echo -e  "  " 
echo -e  "   ${red} [  1 ] CREATE NEW USER ${NC} "
echo -e  "   ${red} [  2 ] GENERATE TRIAL USER${NC} "
echo -e  "   ${red} [  3 ] EXTEND ACCOUNT ACTIVE${NC} "
echo -e  "   ${red} [  4 ] DELETE ACTIVE USER${NC} "
echo -e  "   ${red} [  5 ] CHECK USER LOGIN${NC} "
echo -e  "   ${red} [  6 ] LIST USER INFORMATION${NC} "
echo -e  "   ${red} [  7 ] DELETE USER EXPIRED${NC} "
echo -e  "   ${red} [  8 ] SET AUTO KILL LOGIN${NC} "
echo -e  "   ${red} [  9 ] DISPLAY USER MULTILOGIN${NC} "
echo -e  "   ${red} [ 10 ] RESTART SERVICE${NC} "
echo -e  "   ${red} [ 11 ] CHANGE PORT OPENVPN${NC} "
echo -e  "   ${red} [ 12 ] CHANGE PORT SQUID${NC} "
echo -e  "   ${red} [ 13 ] CHANGE PORT STUNNEL4 "
echo -e  "  " 
echo -e  "  ════════════════════════════════════════════════════════════ " 
echo -e  "    ${red}[  0 ] EXIT TO MENU"
echo -e  "  ════════════════════════════════════════════════════════════ " 
echo -e "\e[1;31m"
read -p "            Please Input Number :  " ssh
echo -e "\e[0m"
case $ssh in
	1)
	usernew
	;;
	2)
	trial
	;;
	3)
	renew
	;;
	4)
	hapus
	;;
	5)
	cek
	;;
	6)
	member
	;;
	7)
	delete
	;;
	8)
	autokill
	;;
	9)
	ceklim
	;;
	10)
	restart
	;;
	11)
	port-ovpn
        ;;
        12)
        port-squid
        ;;
        13)
        port-ssl
        ;;
	0)
        menu
        ;;
        *)
	echo -e "Please enter an correct number"
	sleep 1
	clear
	mssh
	;;
	esac
