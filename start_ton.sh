#!/bin/sh

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.41/lolMiner_v1.41b_Lin64.tar.gz
tar -xvf lolMiner_v1.41b_Lin64.tar.gz && cd 1.41b
./lolMiner --algo TON --pool wss://eu1.stratum.ton-pool.com/stratum --user EQBU__5pqrJXDTFZInmRZl3nivwjunX6Glh41Z1KGNBLk1EZ
