#!/bin/bash/
if [ "$EUID" -ne 0 ]
  then
  echo "Please run with SUDO (as root)"
  exit
fi
if [[ -f "/etc/lsb-release" || -f "/etc/debian_version" ]]
    then
        echo "Linux Ubuntu detected and is supported"
    else
        echo "This Linux Distro is not supported, exiting..."
        exit
    fi
echo "Written by Burhan Rana - YouTube: www.youtube.com/burhanrana / Twitter: https://twitter.com/burhangee"
echo "This script automatically installs all required dependencies for Palera1n Jailbreak, Dualra1n dualbooter, Downr1n Downgrader and such software"
sudo add-apt-repository universe && sudo apt-get update && sudo apt install xz-utils libimobiledevice-utils libusbmuxd-tools git curl python3-pip unzip clang -y && python3 -m pip install pyliblzfse pyimg4 pylzss lzss fastapi aiohttp ujson wikitextparser uvicorn && sudo wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb && sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb && sudo rm libssl1.1_1.1.1f-1ubuntu2.20_amd64.deb
echo "All Done!"