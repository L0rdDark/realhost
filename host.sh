#!bin/bash
#Atualização bem sucedida
#MENSAGEM: Nunca pare de aprender, se você está aqui é por curiosidade e tentar aprender shell ou bash com a ajuda da pesquisa do google entre outros e assim você terá mais facilidade, claro, ter tempo, mas você consegue. 
#menu banner
clear
echo -e "\e[1;33m(98/8)\e[1;32m" 
echo "    __  __           __     ______     __                  __             "
echo "   / / / /___  _____/ /_   / ____/  __/ /__________  _____/ /_____  _____ "
echo "  / /_/ / __ \/ ___/ __/  / __/ | |/_/ __/ ___/ __ \/ ___/ __/ __ \/ ___/ "
echo " / __  / /_/ (__  ) /_   / /____>  </ /_/ /  / /_/ / /__/ /_/ /_/ / /     "
echo "/_/ /_/\____/____/\__/  /_____/_/|_|\__/_/   \__,_/\___/\__/\____/_/      "
echo -e "\e[1;33mV= 2.0                    (99) Português (BR)                    (98) English     " 
echo "" 
echo -e "\e[1;31m[1]\e[1;32m PESQUISAR HOST & SSL"
echo -e "\e[1;31m[2]\e[1;32m TESTAR HOST"
echo -e "\e[1;31m[3]\e[1;32m SALVAR HOSTS PESQUISADOS"
echo -e "\e[1;31m[4]\e[1;32m CRIAR PAYLOAD FUNCIONAL"
echo -e "\e[1;31m[5]\e[1;32m TESTAR HOST + PORTA"
echo -e "\e[1;31m[6]\e[1;32m VER PROXY HOST & WEB"
echo -e "\e[1;31m[7]\e[1;32m MANUAL SOBRE HOST E."
echo -e "\e[1;31m[0]\e[1;32m SAIR DO MENU"
echo -e "\e[1;31m[9]\e[1;32m DESLIGAR TERMINAL"
echo ""
echo -e "\e[1;36m"
echo -n "Escolher opção: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mpress enter to continue with the script...!\e[0m";
read foo
;;
2)echo ""
echo "Showing host status...";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mpress enter to continue with the script...\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mPaste the host to show the status\e[0m";
echo -e "\e[1;31mRemember CTRL + C to go out\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>lista-host.txt
;;
4)clear
bash .payloads.ingles
read foo;
;;
5)echo ""
echo -ne "\e[1;31m DOMAIN(IP/WEB): ";
read MAIN
echo -ne "\e[1;31m PORTS(53,80):  ";
read RTS
sleep 2
echo -e "\e[1;32m";
nmap -p $RTS $MAIN
read foo
;;
6)echo -ne "\e[1;31mSITE WEB/IP: ";
read WEB
echo ""
echo -e "\e[1;32m"
curl https://api.hackertarget.com/geoip/?q=$WEB
read foo
;;
7)clear
echo -e "\e[1;32mRead everything for the proper use of the tool...";
sleep 2.5
cat manualEN.txt
read foo
;;
12.25)clear
echo -e "\e[1;32mEntering the secret menu...";
sleep 2
bash ._
read foo
;;
8)echo ""
echo -e "\e[1;31mMESSAJE FROM RS\e[0m"
echo ""
echo -e "\e[1;36mNever stop learning... :)\e[0m"
echo ""
read foo;
;;
98)clear
echo "translating to english language...";
sleep 3
bash host.sh
;;
99)clear
echo "Translating to portuguese language...";
sleep  3
bash .host.sh
;;
#Fin del menu/in the end
0)clear
exit 0;;
#Fechar terminal
9)clear
logout
;;
#error
*)clear
echo "Invalid command...";
sleep 1.5
;;
esac
done


