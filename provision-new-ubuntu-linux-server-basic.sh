#!/bin/bash

##
## This is a simple bash script to install basic server for a modern docker-first linux server
##
## This scripts updates the system and installs networking tools, docker compose and vim
##

##

set -e

set -x 

##

reset

clear

##

echo
echo "## "
echo "## routine: [provision-new-ubuntu-linux-server-basic] // state: [starting]"
echo "## "
echo

##

apt-get update

##

apt-get upgrade -y

apt-get dist-upgrade -y

##

apt-get install -y ufw

apt-get install -y net-tools

##

apt-get install -y docker-compose

##

apt-get install -y vim

##

echo
echo "## "
echo "## routine: [provision-new-ubuntu-linux-server-basic] // state: [starting]"
echo "## "
echo