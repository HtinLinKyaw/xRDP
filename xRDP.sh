#!/bin/bash
sudo apt update && sudo apt install lxde -y
sudo apt-get -y install libx11-dev libxfixes-dev libssl-dev libpam0g-dev libtool libjpeg-dev flex bison gettext autoconf libxml-parser-perl libfuse-dev xsltproc libxrandr-dev python-libxml2 nasm fuse pkg-config git intltool checkinstall
sudo apt-get install -y xserver-xorg-dev xserver-xorg-core
git clone https://github.com/neutrinolabs/xrdp.git
git clone https://github.com/neutrinolabs/xorgxrdp.git
cd xrdp/
sudo ./bootstrap
sudo ./configure --enable-fuse --enable-jpeg --enable-rfxcodec
sudo make
sudo checkinstall --pkgname=xrdp --pkgversion=0.9.13 --pkgrelease=1 --default
cd
cd xorgxrdp/
sudo ./bootstrap 
sudo ./configure 
sudo make
sudo checkinstall --pkgname=xorgxrdp --pkgversion=0.2.13 --pkgrelease=1 --default
sudo systemctl daemon-reload
sudo systemctl enable xrdp.service
sudo systemctl enable xrdp-sesman.service
sudo systemctl start xrdp

echo
/bin/echo -e "\e[1;36m   !-------------------------------------------------------------!\e[0m"
/bin/echo -e "\e[1;36m   !                    GUI-installer Script                     !\e[0m"
/bin/echo -e "\e[1;36m   !                    Written by Linux VPS Myanmar             !\e[0m"
/bin/echo -e "\e[1;36m   !                    www.linuxvpsmyanmar.com                  !\e[0m"
/bin/echo -e "\e[1;36m   !                    Please support                           !\e[0m"
/bin/echo -e "\e[1;36m   !                    09458021527                              !\e[0m"
/bin/echo -e "\e[1;36m   !                    KPay, CBPay, AyaPay                      !\e[0m"
/bin/echo -e "\e[1;36m   !                    WavePay, OK$, MPT Money                  !\e[0m"
/bin/echo -e "\e[1;36m   !-------------------------------------------------------------!\e[0m"
echo


