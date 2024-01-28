#!/bin/bash

##
## this is a simple bash script to install basic server config
##
##     OS target: docker-first debian-based linux
##
##     Overview: update and upgrade the system, install troubleshooting tools, vim, and docker compose
##

##

set -e

reset

clear

##

echo
echo "## "
echo "## / routine / [provision-ubuntu-basic] / [starting] /"
echo "## "
echo

##

apt-get update

##

apt-get upgrade -y

apt-get dist-upgrade -y

##

apt-get install -y net-tools

apt-get install -y vim

##

apt-get install -y docker-compose

##

echo
echo "## "
echo "## / routine / [provision-ubuntu-basic] / [completed] /"
echo "## "
echo
