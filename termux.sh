#!/data/data/com.termux/files/usr/bin/bash

#curl -Ls https://github.com/wznpp1/termux_files/raw/main/termux.sh | tee ~/termux.sh ~/.bashrc > /dev/null && bash ~/termux.sh


if [ ! -d /data/data/com.termux/files/home/app/ ]; then
    termux-setup-storage 
    sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.bfsu.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list &&apt update && apt upgrade
    pkg install openssh
    passwd
    sshd
fi

if [ ! -s /data/data/com.termux/files/home/.bashrc ]; then
    curl -L https://github.com/wznpp1/termux_files/raw/main/termux.sh > /data/data/com.termux/files/home/.bashrc
fi

# 安装 udocker

if [[ ! -x /data/data/com.termux/files/home/app/bin/udocker ]]; then

    if [ ! -d /data/data/com.termux/files/home/app/ ]; then
        pkg install git
        git clone https://github.com/wznpp1/termux_files.git
        mv ~/termux_files/app ~/app
        chmod +x ~/app/bin/*
        curl -L https://github.com/wznpp1/termux_files/raw/main/app/udocker/udocker.sh > /data/data/com.termux/files/home/app/udocker/udocker.sh
    fi
    #/bin/bash ~/app/udocker/udocker.sh
    chmod +x ~/app/bin/udocker
fi

export PATH=/data/data/com.termux/files/home/app/bin:$PATH