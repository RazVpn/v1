#!/bin/bash                                                                             
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'  


echo -e  "  "
echo -e  " ═══════════════════════════════════════════════════ "
echo -e  " ${green}STATUS SERVICE${NC} "       
echo -e  " ═══════════════════════════════════════════════════ "                            
echo -e  "  "                                                                            
                                                                            
status="$(systemctl show ssh.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSH                : Running "$green"[ OK ]"$NC""                  
else                                                                                    
echo -e " SSh                : Not Running "$red"[ ERROR ]"$NC""        
fi

status="$(systemctl show openvpn.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " OPENVPN            : Running "$green"[ OK ]"$NC""                
else                                                                                    
echo -e " OPENVPN            : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show stunnel4.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " STUNNEL            : Running "$green"[ OK ]"$NC""                  
else                                                                                    
echo -e " STUNNEL            : Not Running "$red"[ ERROR ]"$NC""
fi                                                                                

status="$(systemctl show dropbear.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " DROPBEAR           : Running "$green"[ OK ]"$NC""                 
else                                                                                    
echo -e " DROPBEAR           : Not Running "$red"[ ERROR ]"$NC""
fi                                                                                      

status="$(systemctl show squid.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SQUID              : Running "$green"[ OK ]"$NC""              
else                                                                                    
echo -e " SQUID              : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show nginx.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " NGINX              : Running "$green"[ OK ]"$NC""                
else                                                                                    
echo -e " NGINX              : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show dropbear-ohp.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " DROPBEAR OHP       : Running "$green"[ OK ]"$NC""              
else                                                                                    
echo -e " DROPBEAR OHP       : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show openvpn-ohp.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " OPENVPN OHP        : Running "$green"[ OK ]"$NC""              
else                                                                                    
echo -e " OPENVPN OHP        : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show edussh-nontls.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSH WS             : Running "$green"[ OK ]"$NC""                
else                                                                                    
echo -e " SSH WS             : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show edu-ovpn.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " OVPN WS            : Running "$green"[ OK ]"$NC""                 
else                                                                                    
echo -e " OVPN WS            : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show v2ray@none.service --no-page)"                                 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " VMESS NON TLS      : Running "$green"[ OK ]"$NC""             
else                                                                                    
echo -e " VMESS NON TLS      : Not Running "$red"[ ERROR ]"$NC""
fi                                                                                      

status="$(systemctl show v2ray.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " VMESS TLS          : Running "$green"[ OK ]"$NC""               
else                                                                                    
echo -e " VMESS TLS          : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show v2ray@vless.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " VLESS TLS          : Running "$green"[ OK ]"$NC""               
else                                                                                    
echo -e " VLESS TLS          : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show v2ray@vnone.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " VLESS NON TLS      : Running "$green"[ OK ]"$NC""               
else                                                                                    
echo -e " VLESS NON TLS      : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show trojan --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " TROJAN GFW         : Running "$green"[ OK ]"$NC""               
else                                                                                    
echo -e " TROJAN GFW         : Not Running "$red"[ ERROR ]"$NC""   
fi

status="$(systemctl show wg-quick@wg0 --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " WIREGUARD          : Running "$green"[ OK ]"$NC""               
else                                                                                    
echo -e " WIREGUARD          : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show ssrmu --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SHADOWSOCKS R      : Running "$green"[ OK ]"$NC""              
else                                                                                    
echo -e " SHADOWSOCKS R      : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show shadowsocks-libev.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SHADOWSOCKS OBFS   : Running "$green"[ OK ]"$NC""               
else                                                                                    
echo -e " SHADOWSOCKS OBFS   : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show xray@v2ray-nontls --no-page)"                                 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " XRAY VMESS NON TLS : Running "$green"[ OK ]"$NC""            
else                                                                                    
echo -e " XRAYVMESS NON TLS  : Not Running "$red"[ ERROR ]"$NC""
fi                                                                                      

status="$(systemctl show xray@v2ray-tls --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " XRAY VMESS TLS     : Running "$green"[ OK ]"$NC""             
else                                                                                    
echo -e " XRAYVMESS TLS      : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show xray@vless-tls --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " XRAY VLESS TLS     : Running "$green"[ OK ]"$NC""            
else                                                                                    
echo -e " XRAY VLESS TLS     : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show xray@vless-nontls --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " XRAY VLESS NON TLS : Running "$green"[ OK ]"$NC""                
else                                                                                    
echo -e " XRAY VLESS NON TLS : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show xray@vless-direct --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " XRAY VLESS XTLS    : Running "$green"[ OK ]"$NC""              
else                                                                                    
echo -e " XRAY VLESS XTLS    : Not Running "$red"[ ERROR ]"$NC""
fi

status="$(systemctl show xray@vless-grpc --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " XRAY VLESS GRPC    : Running "$green"[ OK ]"$NC""              
else                                                                                    
echo -e " XRAY VLESS GRPC    : Not Running "$red"[ ERROR ]"$NC""
fi
echo -e  " ═══════════════════════════════════════════════════ "                            
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu