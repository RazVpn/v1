#!/bin/bash
clear
red='\e[1;31m'
red='\e[0;32m'
NC='\e[0m'

echo -e ""
echo ""
echo -e " ═════════════════════════════════════════════" 
echo -e "              ${red}XRAY VLESS${NC}                     "   
echo -e " ═════════════════════════════════════════════" 
echo -e " " 
echo -e "   ${red}[ 1 ] CREATE NEW USER"
echo -e "   [ 2 ] DELETE ACTIVE USER"
echo -e "   [ 3 ] EXTEND ACTIVE USER"
echo -e "   [ 4 ] CHECK USER LOGIN"
echo -e "   [ 5 ] CHANGE PORT XRAY VLESS${NC} "
echo -e "  " 
echo -e " ═════════════════════════════════════════════" 
echo -e "   ${red}[ 0 ] EXIT TO MENU${NC} "
echo -e " ═════════════════════════════════════════════" 
echo -e "\e[1;31m"
read -p "     Please select an option :  "  vless
echo -e "\e[0m"
case $vless in
      1)
      add-xvless
      ;;
      2)
      del-xvless
      ;;
      3)
      renew-xvless
      ;;
      4)
      cek-xvless
      ;;
      5)
      port-xvless
      ;;
      0)
      menu
      ;;
      *)
      echo -e "Please enter an correct number"
      sleep 1
      clear
      mxvless
      ;;
      esac
