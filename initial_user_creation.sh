#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script creates the initial Standarduser for the Debian 11 Server.
#
# ---------------------------------------------

source ~/Files/Scripts/postinstall-scripts/server-debian11/CONFIGS

printf "[DEBUG]: Initial User Creation\n"
adduser --gecos "" $DEFAULT_USER && printf "[DEBUG]: OK\n" || echo "[DEBUG]: ERROR\n"
