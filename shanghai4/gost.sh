#!/bin/bash

#curl -fsSL https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/shanghai4/gost.sh | bash -x
#/etc/netplan
#netplan apply

#ifconfig eth0:1 192.168.0.2 up
#source <(curl -L https://go-install.netlify.app/install.sh)


mkdir -p /root/app/gost
cd /root/app/gost/ 

wget https://gh-proxy.com/https://github.com/go-gost/gost/releases/download/v3.0.0-rc6/gost_3.0.0-rc6_linux_amd64.tar.gz
tar -zxvf gost_3.0.0-rc6_linux_amd64.tar.gz
wget -O /root/app/gost/001.yaml  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/shanghai4/001.yaml

chmod +x /root/app/gost/gost
apt-get update
apt-get install -y supervisor

supervisord -c /etc/supervisord.conf

systemctl stop supervisor.service
cp /etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf.bak
cd /etc/supervisor
wget -O /etc/supervisor/supervisord.conf  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/supervisord1.conf
systemctl enable supervisor.service

systemctl stop supervisor.service
systemctl start supervisor.service
supervisorctl update
supervisorctl start gost
