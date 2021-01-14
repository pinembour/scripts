#!/usr/bin/env sh

######################################################################
# @author      : pinembour (pinembour@$HOSTNAME)
# @file        : nouveau_reclocking_and_fan
# @created     : mardi nov. 03, 2020 16:03:55 CET
#
# @description : Control gpu on nouveau 
######################################################################

GPU=$(find /sys -name pwm1_min)

if [ $1 == '-g' ]
then
	echo 0 >> $GPU
	echo 0a > /sys/kernel/debug/dri/0/pstate
	echo 0f > /sys/kernel/debug/dri/0/pstate
elif [ $1 == '-p' ]
then
	echo 0 >> $GPU
	echo 07 > /sys/kernel/debug/dri/0/pstate
elif [ $1 == '-f' ]
then
   	echo 0 >> $GPU
else
	echo Use -g for game mode, -p for powersave, or -f for silent
fi
