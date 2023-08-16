# Run This Bash Script On Every New Linux Server You Create

## excerpt

In this article i walk you through a super simple bash script to modify your new linux server installation with a few key networking and docker software applications.

## Introduction

You've just created a new ubuntu linux server in the cloud.

Now what?

In this article i walk you through a super simple bash script to modify your new linux server installation with a few key networking and docker software applications.

## What This Ubuntu Server Provision Script Will Do

This simple bash script will provision your new linux server with some basic software and capabilities.

* Update your operating system packages
* Upgrade your operating system software and applications
* Install the Vim text editor over Vi
* Install basic networking software tools
* Install docker compose to run containers

## Creating The Ubuntu Server Provision Script On Disk

The first thing to do is create a new file with a `.sh` extension.

The provision script will be a file called `system-resource-monitor-bash.sh`.

Use the following command to create the provisin script file.

```bash
touch system-resource-monitor-bash.sh 
```

## Going Into Detail Of The Simple Ubuntu Linux Provision Script

In the following sections I will detail the key sections of this basic linux server provision script so that you can understand what is happening and why in the script.

And don't worry, at the end of the document i will share a link to my github with the complete and ready to run provision script.

## Add This Line To The Top Of The Provision Script

Once you've created the script with the `touch` command, open it with your favorite text editor.

The following line is added to the top of the provision script to tell the operating system to run this script with the `/bin/bash` executable.

```bash
#!/bin/bash
```






















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

## Print A Message To Standard Out That The Process Has Completed

So here we just let the user know that the script is done. Nothing fancy.

```
echo
echo "## "
echo "## routine: [provision-new-ubuntu-linux-server-basic] // state: [completed]"
echo "## "
echo
```
## The Complete System Monitor Script

Here's what the complete end result of the bash script will look like:

```bash

#!/bin/bash

##
## BASH script to monitor system information
##
## This bash script performs to following checks:
##
##     * Memory Usage
##     * CPU Load
##
##     * TCP Connections
##     * Kernel Version
##

local_hostname=$(hostname)

function monitor_system_memory_usage() {
    
    echo
    echo "##"
	echo "## Memory Usage // ${local_hostname}: "
    echo "##"
    echo
    
	free -h

	echo
	
}


function monitor_system_information() {
        
    echo
    echo "##"
	echo "## CPU Load // ${local_hostname}: "
    echo "##"
    echo
    
	uptime

	echo

}

function monitor_tcp_connections() {

    echo
    echo "##"
	echo "## TCP Connections // ${local_hostname}: "
    echo "##"
    echo
    
	cat  /proc/net/tcp | wc -l

	echo

}

function monitor_kernel_information() {

    echo
    echo "##"
	echo "## Kernel Version // ${local_hostname}: "
    echo "##"
    echo
    
	uname -r

	echo

}

function execute_all_system_monitoring() {
	
	monitor_system_memory_usage
	
	monitor_system_information
	
	monitor_tcp_connections
	
	monitor_kernel_information
	
}

execute_all_system_monitoring

```

## Make The Bash Script Executable

Save the file and exit.

After that make the script executable by running the following command:

```bash
chmod +x system-resource-monitor-bash.sh
```

## Verify Permissions Of Your Bash File

We'll need to verify the permissions on the bash file before we run it.

To do that, we simply run the 'ls -l' command:

```bash
ls -lha system-resource-monitor-bash.sh 
```

You want to see something similar to the following:

```bash
-rwxrwxr-x 1 software-shinobi software-shinobi 1,1K jun 24 10:47 system-resource-monitor-bash.sh
```

You are looking for there to be three "x" in the beginning part that looks like this:

```bash
-rwxrwxr-x
```

## Executing The Bash File

So we've created the bash script and we've set the proper permissions.

Now let's run the bash script.

```bash
./system-resource-monitor-bash.sh
```

Or you can alternately use this:

```bash
bash system-resource-monitor-bash.sh
```

Or this:

```bash
source system-resource-monitor-bash.sh
```

Or this:

```bash
. system-resource-monitor-bash.sh
```

There are lots of ways to kick off a bash script on a linux server.

## Get The Full Linux Server Provision Script Code On GitHub

Mauris sit amet tempus purus, sit amet condimentum dolor. Nunc pellentesque vestibulum turpis, in semper ex finibus vel. 

<<link to github page>>

## Conclusion

Server provision scripts are great for automating tasks and activites on linux servers.

Today we created a simple provision script to upgrade the base ubuntu linux operating system and install basic networking and containerization software on your linux server.

Update the provision script code with your favorite software and customizations and push it all to your GitHub.

The next time that you create a new linux server, run the provision script and watch your computer update and upgrade itself!
