#!/bin/bash
# 
# ---------------------------------------------
# 
# Author: Yusuf Can Akyol
# Description: This script configures ufw
#
# ---------------------------------------------

ufw default deny outgoing comment 'deny all outgoing traffic'
ufw default deny incoming comment 'deny all incoming traffic'

ufw limit in ssh comment 'allow SSH connections in'

ufw enable
