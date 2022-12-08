#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script updates the Debian 11 server.
#
# ---------------------------------------------

printf "[DEBUG]: Updating ...\n"
apt update && apt updgrade -y && printf "[DEBUG]: OK\n" || printf "[DEBUG]: ERROR\n"
