#!/bin/sh
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
service ssh restart
echo "root:Pmataga1@" | chpasswd


wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvf ngrok-v3-stable-linux-amd64.tgz
./ngrok authtoken 1yR0mrL1Lko3yTtLg39UyAoe99f_6WJCthR8SVmUuvF2qMqd6
./ngrok tcp 22
