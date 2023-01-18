#!/bin/bash

	myip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
    myint=`ifconfig | grep -B1 "inet addr:$myip" | head -n1 | awk '{print $1}'`;

	clear
echo -e ""
echo -e "======================================================"
echo -e "\e[036;1m*\*\Selamat datang ke Server - IP: $myip/*/*\e[0m"
echo -e "\e[035;1mScript by NS-SSH\e[0m"
echo -e "=====================***-MENU-***====================="
echo -e "\e[033;1m-SSH & OpenVPN-"
echo -e "\e[031;1m 1\e[0m) Create User Account (\e[34;1musernew\e[0m)"
echo -e "\e[031;1m 2\e[0m) Generate User Trial Account (\e[34;1mtrial\e[0m)"
echo -e "\e[031;1m 3\e[0m) Extending Active Life (\e[34;1mrenew\e[0m)"
echo -e "\e[031;1m 4\e[0m) Delete User Account (\e[34;1mdeluser\e[0m)"
echo -e "\e[031;1m 5\e[0m) View Register User Account (\e[34;1mmember\e[0m)"
echo -e "\e[031;1m 6\e[0m) Delete User Account Expire (\e[34;1mdelete\e[0m)"
echo -e "\e[031;1m 7\e[0m) Set up Autokill SSH (\e[34;1mautokill\e[0m)"
echo -e "\e[031;1m 8\e[0m) View Multi Login SSH (\e[34;1mceklim\e[0m)"
echo -e "\e[031;1m 9\e[0m) View User Online (\e[34;1mcek\e[0m)"
echo -e "\e[033;1m-Service-"
echo -e "\e[031;1m 10\e[0m) Restart Services 1 (\e[34;1mrestart\e[0m)"
echo -e "\e[031;1m 11\e[0m) Restart Services 2 (\e[34;1mre-start\e[0m)"
echo -e "\e[031;1m 12\e[0m) View Menu Webmin (\e[34;1mweb-min\e[0m)"
echo -e "\e[033;1m-Wireguard-"
echo -e "\e[031;1m 13\e[0m) Create User Wireguard (\e[34;1maddwg \e[0m)"
echo -e "\e[031;1m 14\e[0m) Delete User Wireguard (\e[34;1mdelwg\e[0m)"
echo -e "\e[031;1m 15\e[0m) Extending Active Wireguard (\e[34;1mrenewwg\e[0m)"
echo -e "\e[031;1m 16\e[0m) View User Online (\e[34;1mcekwg\e[0m)"
echo -e "\e[033;1m-L2TP/IPSEC-"
echo -e "\e[031;1m 17\e[0m) Creating L2TP / IPSEC Account (\e[34;1maddl2tp\e[0m)"
echo -e "\e[031;1m 18\e[0m) Deleting L2TP / IPSEC Account (\e[34;1mdell2tp\e[0m)"
echo -e "\e[031;1m 19\e[0m) Extend L2TP / IPSEC Account (\e[34;1mrenewl2tp\e[0m)"
echo -e "\e[033;1m-PPTP-"
echo -e "\e[031;1m 20\e[0m) Create Account PPTP (\e[34;1maddpptp\e[0m)"
echo -e "\e[031;1m 21\e[0m) Delete PPTP Account (\e[34;1mdelpptp\e[0m)"
echo -e "\e[031;1m 22\e[0m) Extend PPTP Account (\e[34;1mrenewpptp\e[0m)"
echo -e "\e[033;1m-SSTP-"
echo -e "\e[031;1m 23\e[0m) Create Account SSTP (\e[34;1maddsstp\e[0m)"
echo -e "\e[031;1m 24\e[0m) Delete SSTP Account (\e[34;1mdelsstp\e[0m)"
echo -e "\e[031;1m 25\e[0m) Extend SSTP Account (\e[34;1mrenewsstp\e[0m)"
echo -e "\e[033;1m-Shadowsocks OBFS-"
echo -e "\e[031;1m 26\e[0m) Create User shadowsocks (\e[34;1maddss\e[0m)"
echo -e "\e[031;1m 27\e[0m) Delete User shadowsocks (\e[34;1mdelss\e[0m)"
echo -e "\e[031;1m 28\e[0m) Extending Active shadowsocks (\e[34;1mrenewss\e[0m)"
echo -e "\e[033;1m-V2RAY-"
echo -e "\e[031;1m 29\e[0m) Create User vmess (\e[34;1maddws\e[0m)"
echo -e "\e[031;1m 30\e[0m) Delete User vmess (\e[34;1mdelws\e[0m)"
echo -e "\e[031;1m 31\e[0m) Extending Active vmess (\e[34;1mrenewws\e[0m)"
echo -e "\e[031;1m 32\e[0m) Rebuild Cert vmess (\e[34;1mcertv2ray\e[0m)"
echo -e "\e[033;1m-VLESS-"
echo -e "\e[031;1m 33\e[0m) Create User vless (\e[34;1maddvless\e[0m)"
echo -e "\e[031;1m 34\e[0m) Delete User vless (\e[34;1mdelvless\e[0m)"
echo -e "\e[031;1m 35\e[0m) Extending Active vless (\e[34;1mrenewvless\e[0m)"
echo -e "\e[033;1m-Trojan-"
echo -e "\e[031;1m 36\e[0m) Create User trojan (\e[34;1maddtr\e[0m)"
echo -e "\e[031;1m 37\e[0m) Delete User trojan (\e[34;1mdeltr\e[0m)"
echo -e "\e[031;1m 38\e[0m) Extending Active trojan (\e[34;1mrenewtr\e[0m)"
echo -e "\e[033;1m-SYSTEM-"
echo -e "\e[031;1m 39\e[0m) Clear Ram Cache (\e[34;1mramc\e[0m)"
echo -e "\e[031;1m 40\e[0m) Check Ram Usage VPS (\e[34;1mram\e[0m)"
echo -e "\e[031;1m 41\e[0m) Reboot VPS (\e[34;1mreboot\e[0m)"
echo -e "\e[031;1m 42\e[0m) Speedtest VPS (\e[34;1mspeedtest\e[0m)"
echo -e "\e[031;1m 43\e[0m) About (\e[34;1minfo\e[0m)"
echo -e "\e[031;1m 44\e[0m) About Script (\e[34;1mabout\e[0m)"
echo -e "=====================***-NS-SSH-***===================="
echo -e "\e[031;1mx\e[0m) Exit"
echo -e ""
	read -p "Masukkan pilihan anda, kemudian tekan ENTER: " option1
	case $option1 in
		1)  
        clear
        usernew
        ;;
        2)  
        clear
        trial
        ;;
        3)	
        clear
        renew
	    ;;	
        4)
        clear
        deluser
        ;;
        5)
        clear
        member
	    ;;
        6)
        clear
        delete
        ;;		
	    7)
	    clear
	    autokill
	    ;;
	    8)  
        clear
        ceklim
        ;;
        9)  
        clear
        cek
        ;;
        10)	
        clear
        restart
	    ;;
		11)
        clear
        re-start
	    ;;
        12)
	    clear
	    webmin
		 ;;
        13)
        clear
        addwg
        ;;
        14)
        clear
        delwg
	    ;;
        15)
        clear
        renewwg
        ;;		
	    16)
	    clear
	    cekwg
	    ;;
		17)  
        clear
        addl2tp
        ;;
        18)  
        clear
        dell2tp
        ;;
        19)	
        clear
        renewl2tp
	    ;;	
        20)
        clear
        addpptp
        ;;
        21)
        clear
        delpptp
	    ;;
        22)
        clear
        renewpptp
        ;;		
	    23)
	    clear
	    addsstp
	    ;;
	    24)  
        clear
        delsstp
        ;;
        25)  
        clear
        renewsstp
        ;;
        26)
	    clear
	    addss
	    ;;
		27)  
        clear
        delss
        ;;
        28)  
        clear
        renewss
        ;;
        29)	
        clear
        addws
	    ;;	
        30)
        clear
        delws
        ;;
        31)
        clear
        renewws
	    ;;
        32)
        clear
        certv2ray
        ;;		
	    33)
	    clear
	    addvless
	    ;;
	    34)  
        clear
        delvless
        ;;
        35)  
        clear
        renewvless
        ;;
        36)	
        clear
        addtr
	    ;;	
        37)
        clear
        deltr
        ;;
        38)
        clear
        renewtr
	    ;;
		39)
        clear
        ramc
        ;;		
	    40)
        clear
        ram
	    ;;	
        41)
        clear
        reboot
        ;;
        42)
        clear
        speedtest
	    ;;
        43)
        clear
        info
        ;;		
	    44)
	    clear
	    about
	    ;;
	    x)
          ;;
        *) menu;;
        esac
