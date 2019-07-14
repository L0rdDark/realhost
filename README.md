...............................
#Instalar pacotes para o bom começo do script

apt update && apt upgrade -y

pkg install nmap

pkg install wget

pkg install curl

pkg install git

git clone https://github.com/L0rdDark/realhost.git

cd L0rdDark

chmod +x realhost.sh

bash realhost.sh
