#!/bin/sh
docker run \
	-v /var/yocto-cache:/var/yocto-cache \
	-v /home/louis:/home/user \
	-u user:user \
	-i -t yocto_builder
