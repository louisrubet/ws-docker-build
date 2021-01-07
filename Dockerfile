FROM ubuntu:18.04

# packages for yocto
RUN apt update && apt install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
     xz-utils debianutils iputils-ping zlib1g-dev jq curl iproute2 -y
RUN apt install locales vim tig python3-setuptools zsh ccache -y
RUN apt install docker

ENV TZ=Europe/Paris
RUN DEBIAN_FRONTEND="noninteractive" apt install awscli -y
RUN locale-gen en_US.UTF-8

# user matching the one from host
RUN groupadd -g 1000 louis && useradd -m -u 1000 -g 1000 louis
RUN mkdir -p /var/yocto-cache/sstate-cache && chown -R louis:louis /var/yocto-cache

#
CMD chsh -s $(which bash)
CMD /home/louis/Development/ws-yocto/docker/docker_shell.sh
