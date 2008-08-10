#!/bin/bash

# lid button pressed/released event handler
test -x /usr/sbin/laptop_mode && /usr/sbin/laptop_mode auto

if grep -q open /proc/acpi/button/lid/LID/state
then
       /usr/bin/xset -display :0.0 dpms force on
else
       /usr/bin/xset -display :0.0 dpms force off
fi
