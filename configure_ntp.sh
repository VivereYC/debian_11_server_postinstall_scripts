#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script setups the ntp client.
#
# ---------------------------------------------

sed -i -r -e "s/^((server|pool).*)/# \1         # commented by $(whoami) on $(date +"%Y-%m-%d @ %H:%M:%S")/" /etc/ntp.conf

echo -e "\npool pool.ntp.org iburst         # added by $(whoami) on $(date +"%Y-%m-%d @ %H:%M:%S")" | tee -a /etc/ntp.conf

service ntp restart
