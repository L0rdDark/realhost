...............................
#Instalar pacotes para o bom começo do script

apt update && apt upgrade -y

pkg install nmap

pkg install wget

pkg install curl

pkg install git

git clone https://github.com/HackeRStrategy/Irparpaya-a.git

cd Irparpaya-a

chmod +x real-host-v2.sh

bash real-host-v2.sh
