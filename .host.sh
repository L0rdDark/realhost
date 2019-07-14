#!bin/bash
#MENSAGEM: Nunca pare de aprender, se você está aqui é por curiosidade e tentar aprender shell ou bash com a ajuda da pesquisa do google entre outros e assim você terá mais facilidade claro que levará tempo.
clear
while :
do
#menu
clear
echo -e "\e[1;33m(98/8)\e[1;32m" 
echo "    __  __           __     ______     __                  __             "
echo "   / / / /___  _____/ /_   / ____/  __/ /__________  _____/ /_____  _____ "
echo "  / /_/ / __ \/ ___/ __/  / __/ | |/_/ __/ ___/ __ \/ ___/ __/ __ \/ ___/ "
echo " / __  / /_/ (__  ) /_   / /____>  </ /_/ /  / /_/ / /__/ /_/ /_/ / /     "
echo "/_/ /_/\____/____/\__/  /_____/_/|_|\__/_/   \__,_/\___/\__/\____/_/      "
echo -e "\e[1;33mV= 2.0                    (99) Español                    (98) Ingles     " 
echo "" 
echo -e "\e[1;31m[1]\e[1;32m EXTRATOR HOST & SSL"
echo -e "\e[1;31m[2]\e[1;32m MOSTRAR STATUS DE WEB"
echo -e "\e[1;31m[3]\e[1;32m GUARDAR HOSTS EXTRAIDOS"
echo -e "\e[1;31m[4]\e[1;32m GERAR PAYLOAD FUNCIONAL"
echo -e "\e[1;31m[5]\e[1;32m VEJA AS PORTAS WEB & HOST"
echo -e "\e[1;31m[6]\e[1;32m VER PROXY HOST & WEB"
echo -e "\e[1;31m[7]\e[1;32m MANUAL DE USO HOST E."
echo -e "\e[1;31m[0]\e[1;32m SAIR DO MENU"
echo ""
echo -e "\e[1;36m"
echo -n "Escolha a opção: "
leia a opção
#lista de menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mPressione uma tecla para continuar com o script...!\e[0m";
read foo
;;
2)echo ""
echo "Mostrando status de hosts";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mPressione uma tecla para continuar..\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mPegar os anfitriões para obter o status\e[0m";
echo -e "\e[1;31mLembre-se de CTRL + C para sair\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>lista-host.txt
;;
4)clear
bash .payloads
read foo;
;;
5)echo ""
echo -ne "\e[1;31m DOMINIO(IP/WEB): ";
read NIO
echo -ne "\e[1;31m PORTAS(53,80):  ";
read TOS
sleep 2
echo -e "\e[1;32m";
nmap -p $TOS $NIO
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
echo "Leia tudo para o uso adequado da ferramenta...";
sleep 2.5
cat manualPT.txt
read foo
;;
12.25)clear
echo -e "\e[1;32mEntrando no menu secreto...";
sleep 2
bash ._
read foo
;;
8)echo ""
echo -e "\e[1;31mMENSAGEM RS\e[0m"
echo ""
echo -e "\e[1;36mNunca pare de aprender... :)\e[0m"
echo ""
read foo;
;;
98)clear
echo "Traduzindo para o idioma Inglês...";
sleep 4
;;
99)clear
echo "Traduzindo para o idioma português...";
sleep 4
;;
#Fim do menu / no final
0)clear
exit 0;;
#error
*)clear
echo "Comando invalido...";
sleep 1.5
;;
esac
done


