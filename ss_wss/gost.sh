#!/bin/bash

#curl -fsSL https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/ss_wss/gost.sh | bash -x
#source <(curl -L https://go-install.netlify.app/install.sh)


mkdir -p /root/app/gost
cd /root/app/gost/ 

wget https://gh-proxy.com/https://github.com/go-gost/gost/releases/download/v3.0.0-rc6/gost_3.0.0-rc6_linux_amd64.tar.gz
tar -zxvf gost_3.0.0-rc6_linux_amd64.tar.gz
chmod +x /root/app/gost/gost
apt-get update
apt-get install -y supervisor

systemctl stop supervisor.service
cp /etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf.bak
cd /etc/supervisor
wget -O /etc/supervisor/supervisord.conf  https://gh-proxy.com/https://github.com/wznpp1/termux_files/raw/main/ss_wss/supervisord1.conf

systemctl enable supervisor.service
supervisord1.conf
systemctl stop supervisor.service
systemctl start supervisor.service
supervisorctl update
supervisorctl start gost
