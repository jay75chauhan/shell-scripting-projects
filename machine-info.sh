#!/bin/bash

set -x # debug mode
set -e # exit the script if error
set -o # if | pipefail error

#memory 
df -h

#storage
free -g

#cpu
nproc

#process id
ps -ef | grep amazon | awk -F" " '{print $2}'