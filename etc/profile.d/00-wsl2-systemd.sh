#!/bin/bash

# NB: We play games with sudoers.d to be able to do this without
# a password, since on Arch Linux, any sane way that we can run 
# commands as root are going to be gated by systemd already being 
# enabled.
sudo /sbin/wsl-enable-systemd