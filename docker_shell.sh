#!/bin/bash
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export TEMPLATECONF=/home/louis/Development/ws-yocto/conf
cd /home/louis/Development/ws-yocto && source /home/louis/Development/ws-yocto/poky/oe-init-build-env build && /usr/bin/zsh
