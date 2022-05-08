#!/bin/bash

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.46a/lolMiner_v1.46a_Lin64.tar.gz && tar -xvf lolMiner_v1.46a_Lin64.tar.gz && cd 1.46a && ./lolMiner --algo TON --pool wss://pplns.toncoinpool.io/stratum --user EQCXEb2w0b3wTVa6xVf-omDRqBQ0clm9VV0FT8yiNb4a7y8z
#################################
## Begin of user-editable part ##
#################################
cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
