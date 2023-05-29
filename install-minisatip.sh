#!/bin/sh
cd /home
#clone new folder
git clone https://github.com/dnmnhat/minisatip.git
# move to new folder
cd minisatip/
# configure minisatip
./configure --host=mips-openwrt-linux-musl --enable-static
# build minisatip
make
# start minisat with parameter
sudo ./minisatip -k
