#!/bin/sh
docker run \
	--privileged \
	-v /var/yocto-cache:/var/yocto-cache \
	-v /home/louis:/home/louis \
	-u louis:louis \
	-e DISPLAY \
	-i -t yocto_builder
