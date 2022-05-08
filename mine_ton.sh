#!/bin/bash

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.46a/lolMiner_v1.46a_Lin64.tar.gz && tar -xvf lolMiner_v1.46a_Lin64.tar.gz && cd 1.46a && ./lolMiner --algo TON --pool wss://eu1.stratum.ton-pool.com/stratum --user EQBU__5pqrJXDTFZInmRZl3nivwjunX6Glh41Z1KGNBLk1EZ
#################################
## Begin of user-editable part ##
#################################
cd "$(dirname "$0")"

./lolMiner --algo TON --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo TON --pool $POOL --user $WALLET $@
done
