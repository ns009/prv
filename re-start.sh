#!/bin/bash
# Script by : NS-SSH
clear
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "    AutoScriptVPS by  NS-SSH      "
echo -e ""
echo -e "    [1] Restart ALL"
echo -e "    [2] Restart TROJAN"
echo -e "    [3] Restart VLESS"
echo -e "    [4] Restart WIREGUARD"
echo -e "    [5] Restart V2RAY"
echo -e "    [x] Exit"
echo -e ""
read -p "    Select From Options [1-5 or x] :  " Restart
echo -e ""
echo -e "======================================"
sleep 1
clear
case $Restart in
                1)
                clear
                systemctl restart v2ray@trojan
				systemctl restart v2ray@vless
				systemctl restart v2ray@vnone
				systemctl restart wg-quick@wg0
				systemctl restart v2ray
				systemctl restart v2ray@none
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       AutoScriptVPS by NS-SSH    "
                echo -e ""
                echo -e "          Service/s Restarted         "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                2)
                clear
                systemctl restart v2ray@trojan
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       AutoScriptVPS by NS-SSH    "
                echo -e ""
                echo -e "       Trojan Service Restarted     "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                3)
                clear
                systemctl restart v2ray@vless
				systemctl restart v2ray@vnone
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "        AutoScriptVPS by NS-SSH   "
                echo -e ""
                echo -e "        Vless Service Restarted    "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                4)
                clear
                systemctl restart wg-quick@wg0
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       AutoScriptVPS by NS-SSH    "
                echo -e ""
                echo -e "       W.Guard Service Restarted      "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                5)
                clear
                systemctl restart v2ray
				systemctl restart v2ray@none
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       AutoScriptVPS by NS-SSH    "
                echo -e ""
                echo -e "        V2ray Service Restarted      "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac