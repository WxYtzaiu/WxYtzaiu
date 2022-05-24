#!/bin/bash

wget https://whalepool-cdn.fra1.digitaloceanspaces.com/software/danila-miner/danila-miner-2.3.1-ubuntu-bionic.tar.gz

tar xaf danila-miner-2.3.1-ubuntu-bionic.tar.gz

chmod +x danila-miner

./danila-miner run https://ton-pool-server-p3agi.ondigitalocean.app EQBU__5pqrJXDTFZInmRZl3nivwjunX6Glh41Z1KGNBLk1EZ
