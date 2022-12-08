#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script downloads packages and their configs from github.
#
# ---------------------------------------------
#

source ~/Files/Scripts/postinstall-scripts/server-debian11/CONFIGS

apt install $PACKAGES
