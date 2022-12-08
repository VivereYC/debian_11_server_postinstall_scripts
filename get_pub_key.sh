#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script downloads my public key from github and writes it to ~/.ssh/authorized_keys.
#
# ---------------------------------------------
#

source ~/Files/Scripts/postinstall-scripts/server-debian11/CONFIGS

printf "[DEBUG]: Get public SSH key from github and write it to ~/ssh/authorized_keys\n"
curl $SSH_KEY_URL >> ~/.ssh/authorized_keys && printf "[DEBUG]: OK\n" || printf "[DEBUG]: ERROR\n"
