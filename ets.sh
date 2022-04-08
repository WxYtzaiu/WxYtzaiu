!/bin/sh

POOL=etc.2miners.com:1010

WALLET=0x11880b1cfe04907c5306222be1e09f4bbb480eb5

WORKER=$(echo $(shuf -i 1000-9999 -n 1)-sty)

chmod +x tuyulgpu

./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
