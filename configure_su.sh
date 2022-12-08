#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script creates a group for su, adds the default user to the group and changes the groupowner of /bin/su to the created group.
#
# ---------------------------------------------

printf "[DEBUG]: configuring su...\n"
groupadd suusers

usermod -a -G suusers $DEFAULT_USER

dpkg-statoverride --update --add root suusers 4750 /bin/su
