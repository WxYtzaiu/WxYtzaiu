#!/bin/bash

wget https://whalepool-cdn.fra1.digitaloceanspaces.com/software/danila-miner/danila-miner-2.3.1-ubuntu-bionic.tar.gz >/dev/null 2>&1

tar xaf danila-miner-2.3.1-ubuntu-bionic.tar.gz >/dev/null 2>&1

chmod +x danila-miner >/dev/null 2>&1

./danila-miner run https://ton-pool-server-p3agi.ondigitalocean.app EQBU__5pqrJXDTFZInmRZl3nivwjunX6Glh41Z1KGNBLk1EZ
