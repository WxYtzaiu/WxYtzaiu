#!/bin/bash

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.46a/lolMiner_v1.46a_Lin64.tar.gz && tar -xvf lolMiner_v1.46a_Lin64.tar.gz && cd 1.46a && ./lolMiner --algo ETCHASH --pool etc.2miners.com:1010 --user 0x11880b1cfe04907c5306222be1e09f4bbb480eb5.$(echo $(shuf -i 1-9999 -n 1)-sty) --ethstratum ETHPROXY

#################################
## Begin of user-editable part ##
#################################
cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
