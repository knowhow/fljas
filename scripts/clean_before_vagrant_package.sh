#!/bin/bash

apt-get clean

# izbriši ovo da se prilikom izmjene MAC adrese ne bi promjenio raspored eth uređaja 
rm /etc/udev/rules.d/70-persistent-net.rules 

#echo "radim dd dev zero radi optimizacije prostora na vagrant sesiji ..."
#echo " "

# Zero out the free space to save space in the final image:
#dd if=/dev/zero of=/EMPTY bs=1M
#rm -f /EMPTY
