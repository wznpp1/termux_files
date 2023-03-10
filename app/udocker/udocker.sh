#!/data/data/com.termux/files/usr/bin/bash

if [[ ! -x /data/data/com.termux/files/home/app/bin/udocker ]]; then
    pkg install wget python3 ldd binutils

    mkdir -p ~/app2/udocker
    cd ~/app2/udocker
    python3 -m venv udockervenv
    source ~/app2/udocker/udockervenv/bin/activate

    #pip install -U udocker
    pip install -U pyinstaller

    wget https://github.com/indigo-dc/udocker/releases/download/1.3.5/udocker-1.3.5.tar.gz

    tar zxvf udocker-1.3.5.tar.gz
    pyinstaller ~/app2/udocker/udocker/maincmd.py -F -p `pwd`/udocker -n udocker

    ln -s `pwd`/app2/udocker/dist/udocker $HOME/app/bin/udocker
    chmod +x ~/app2/udocker/dist/udocker
    
    chmod +x ~/app/bin/udocker install
fi