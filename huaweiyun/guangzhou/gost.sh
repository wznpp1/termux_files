#!/bin/bash

#curl -fsSL https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/huaweiyun/guangzhou/gost.sh | bash -x
#/etc/netplan
#netplan apply

#ifconfig eth0:1 192.168.0.2 up


mkdir -p /root/app/gost
cd /root/app/gost/ 
wget https://gh-proxy.com/https://github.com/go-gost/gost/releases/download/v3.0.0/gost_3.0.0_linux_amd64.tar.gz
tar -zxvf gost_3.0.0_linux_amd64.tar.gz

wget -O /root/app/gost/001.yaml  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/huaweiyun/guangzhou/001.yaml
wget -O /root/app/gost/VLANSet.sh  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/huaweiyun/guangzhou/VLANSet.sh
wget -O /etc/systemd/system/VLANSet.service  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/huaweiyun/guangzhou/VLANSet.service

chmod +x /root/app/gost/VLANSet.sh
chmod +x /root/app/gost/gost


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

