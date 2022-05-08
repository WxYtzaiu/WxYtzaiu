#!/bin/sh

# Example bat file for mining TON with teamredminer. PLEASE REPLACE the example wallet and workername below
# unless you're just doing a quick test.
#
# Note that TRM doesn't support all TON pools. Please check the most recent version of the TON_MINING.txt
# guide included in the release package, or read it online here:
#
# https://github.com/todxx/teamredminer/tree/master/doc

./teamredminer -a ton -o stratum+tcp://eu1.stratum.ton-pool.com:443/stratum -u EQBU__5pqrJXDTFZInmRZl3nivwjunX6Glh41Z1KGNBLk1EZ -p 1
