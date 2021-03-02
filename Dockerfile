FROM ubuntu:18.04

# packages for yocto
#RUN apt update && apt install gawk wget git-core diffstat unzip texinfo gcc-multilib \
#     build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
#     xz-utils debianutils iputils-ping zlib1g-dev jq curl iproute2 -y
RUN apt update && apt install gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat cpio python3 python3-pip python-pexpect \
     xz-utils debianutils iputils-ping zlib1g-dev jq curl iproute2 sudo -y
RUN apt install locales vim tig python3-setuptools zsh ccache -y
RUN apt install docker -y

ENV TZ=Europe/Paris
RUN DEBIAN_FRONTEND="noninteractive" apt install awscli -y
RUN locale-gen en_US.UTF-8

# user matching the one from host
RUN groupadd -g 1000 louis && useradd -m -u 1000 -g 1000 louis && echo louis:louis | chpasswd && adduser louis sudo
RUN mkdir -p /var/yocto-cache/sstate-cache && chown -R louis:louis /var/yocto-cache

#
CMD /home/louis/Development/ws-yocto/ws-docker-build/docker_shell.sh
