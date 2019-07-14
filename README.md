apt update && apt upgrade -y

pkg install nmap

pkg install wget

pkg install curl

pkg install git

git clone https://github.com/L0rdDark/realhost.git

cd realhost

chmod +x host.sh

bash host.sh
