#!/bin/bash

if [ -d /data/data/com.termux/files/home/app/ ]; then
    termux-setup-storage 
    sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.bfsu.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list &&apt update && apt upgrade
    pkg install openssh
    passwd
    sshd

    pkg install git

    git clone https://github.com/wznpp1/termux_files.git
    mv ~/termux_files/app ~/app
fi

# 安装 udocker
if [[ ! -f /data/data/com.termux/files/home/app/bin/udocker && ! -d /data/data/com.termux/files/home/app/ ]]; then
    /bin/bash ~/app/udocker/udocker.sh
fi

export PATH=/data/data/com.termux/files/home/app/bin:$PATH