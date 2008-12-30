#!/bin/sh
USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then
cp /etc/resolv.conf /usr/share/bitflu/etc/
cd /usr/share/bitflu ; perl bitflu.pl
else
echo 'Please run bitflu as root' ; exit
fi
