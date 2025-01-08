#!/bin/bash

#curl -fsSL https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/gangyun/gost.sh | bash -x
#/etc/netplan
#netplan apply

#ifconfig eth0:1 192.168.0.2 up


mkdir -p /root/app/gost
cd /root/app/gost/ 

wget https://gh-proxy.com/https://github.com/go-gost/gost/releases/download/v3.0.0-rc6/gost_3.0.0-rc6_linux_amd64.tar.gz
tar -zxvf gost_3.0.0-rc6_linux_amd64.tar.gz
wget -O /root/app/gost/001.yaml  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/gangyun/001.yaml

chmod +x gost
apt-get update
apt-get install -y supervisor

systemctl stop supervisor.service
cp /etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf.bak
cd /etc/supervisor
wget -O /etc/supervisor/supervisord.conf  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/supervisord1.conf
systemctl enable supervisor.service


systemctl stop supervisor.service
systemctl start supervisor.service
supervisord -c /etc/supervisor/supervisord.conf

supervisorctl update
supervisorctl start gost

