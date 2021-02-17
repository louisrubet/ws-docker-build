#!/bin/bash
#YOCTO_PATH=/home/louis/Development/ws-yocto-zeus
YOCTO_PATH=/home/louis/Development/ws-yocto

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export TEMPLATECONF=${YOCTO_PATH}/conf
cd ${YOCTO_PATH} && source ${YOCTO_PATH}/poky/oe-init-build-env build && /usr/bin/zsh
