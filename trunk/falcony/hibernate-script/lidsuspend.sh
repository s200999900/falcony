#!/bin/sh
grep -q open /proc/acpi/button/lid/LID/state || /usr/sbin/hibernate
