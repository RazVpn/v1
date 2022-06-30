#!/bin/bash
clear
red='\e[1;31m'
NC='\e[0m'

echo -e ""
echo -e " ${red} ═════════════════════════════════════════"
echo -e "        SHADOWSOCKS OBFS   " 
echo -e " ═════════════════════════════════════════"
echo -e " " 
echo -e "   [ 1 ]  CREATE NEW USER"
echo -e "   [ 2 ]  DELETE ACTIVE USER"
echo -e "   [ 3 ]  EXTEND ACTIVE USER"
echo -e "   [ 4 ]  CHECK USER LOGIN"
echo -e " ═════════════════════════════════════════" 
echo -e "   ${red}[ 0 ]  EXIT TO MENU"
echo -e " ═════════════════════════════════════════" 
echo -e "\e[1;31m"
read -p "     Please Input Number  :  "  ss
echo -e "\e[0m"
case $ss in
1)
add-ss
;;
2)
del-ss
;;
3)
renew-ss
;;
4)
cek-ss
;;
0)
menu
;;
*)
echo -e "Please enter an correct number"
sleep 1
clear
mss
;;
esac
