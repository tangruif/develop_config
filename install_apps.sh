#!/bin/bash

sudo apt-get update && sudo apt-get upgrade

# install necessaty tools
sudo apt-get install openssh-server \
	vim git vsftpd \
	cmake binutils gcc gdb \
	fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison \
	qemu tmux  htop

# get tools
git clone https://github.com/tangruif/gdbLinuxEnv.git ~/Downloads
