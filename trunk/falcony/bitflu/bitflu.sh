#!/bin/sh
USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then
cd /usr/share/bitflu ; perl bitflu.pl
else
echo 'Please run bitflu as root' ; exit
fi