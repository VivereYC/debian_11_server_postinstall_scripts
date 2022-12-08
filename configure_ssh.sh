#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script creates a group that restricts who can login with ssh, configures ssh and removes short Diffie-Hellman keys.
#
# ---------------------------------------------

source ~/Files/Scripts/postinstall-scripts/server-debian11/CONFIGS

printf "[DEBUG]: Configuring SSH...\n"
# add group for ssh users and put the users to the group
groupadd sshusers
usermod -a -G sshusers root
usermod -a -G sshusers $DFLT_USER

# get the sshd config file
curl "https://raw.githubusercontent.com/VivereYC/debian_11_postinstall_scripts/main/configs/sshd_config" > /etc/ssh/sshd_config

# remove short Diffie-Hellman keys
awk '$5 >= 3071' /etc/ssh/moduli | tee /etc/ssh/moduli.tmp
mv /etc/ssh/moduli.tmp /etc/ssh/moduli
