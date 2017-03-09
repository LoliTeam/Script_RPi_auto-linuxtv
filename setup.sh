#!/bin/bash
# Specify colors utilized in the terminal
normal='tput sgr0'              # White
red='tput setaf 1'              # Red
green='tput setaf 2'            # Green
yellow='tput setaf 3'           # Yellow
blue='tput setaf 4'             # Blue
violet='tput setaf 5'           # Violet
cyan='tput setaf 6'             # Cyan
white='tput setaf 7'            # White
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold Red
bldgrn=${txtbld}$(tput setaf 2) # Bold Green
bldblu=${txtbld}$(tput setaf 4) # Bold Blue
bldylw=$(txtbld)$(tput setaf 3) # Bold Yellow
bldvlt=${txtbld}$(tput setaf 5) # Bold Violet
bldcya=${txtbld}$(tput setaf 6) # Bold Cyan
bldwht=${txtbld}$(tput setaf 7) # Bold White

clear

        echo -e "${bldred}                                 "
        echo -e "${bldred}   ----------------------------- "
        echo -e "${bldred}   | ${bldnormal}Auto-installation Linuxtv  ${bldred}| "
        echo -e "${bldred}   |                           | "
        echo -e "${bldred}   | ${bldnormal}Installing requiered packages ${bldred}| "
        echo -e "${bldred}   |                           | "
        echo -e "${bldred}   |${bldnormal}Setting up your RPi${bldred}| "
        echo -e "${bldred}   ----------------------------  "

tput setaf 3
	sleep 1
	echo  
	echo Updating package list ...
	echo  
	sleep 3
tput setaf 2
	time sudo apt-get update
	sleep 3
	time sudo apt-get upgrade -y
	sleep 3
	time sudo apt-get dist-upgrade -y
tput setaf 3
	echo  
	echo Installing required packages ...
	echo  
	sleep 3
tput setaf 2
	time sudo apt-get install -y raspberrypi-kernel-headers git make gcc patch lsdiff wget perl
tput setaf 3
	echo  
	echo Downloading updated Linuxtv source code ...
	echo  
	sleep 3
tput setaf 2
	cd ~/
	git clone git://linuxtv.org/media_build.git
	sleep 3
tput setaf 3
	echo  
	echo Building Linuxtv source code ...
	echo  
	sleep 3
tput setaf 2
	~/media_build/build
	sleep 3
tput setaf 3
	echo  
	echo Installing Linuxtv source code ...
	echo  
	sleep 3
tput setaf 2
	make install
	sleep 3
	echo
		echo -e "${bldorange}   -------------------------------------------------- "
        echo -e "${bldorange}   |   ${txtund}Installation completed    | "
        echo -e "${bldorange}   |                                                | "
        echo -e "${bldorange}   |       ${txtund}dont forget to reboot!.        | "
        echo -e "${bldorange}   |                                                | "
        echo -e "${bldorange}   -------------------------------------------------- "
