#!/bin/bash

#will show history and also log it to a file
#cannot setup date-time?
#cd /mnt/d/jjzALL/myTUT/DevOps/Linux/history/
#dos2unix show_history.sh
#./show_history.sh log 111

SCRIPT_NAME=${1}
NUMBER_OF_LINES_BACK=$2

#clean up work
rm -f log.sh.swp
rm -f .log.sh.swp

# Enable History in a non interactive shell
HISTFILE=~/.bash_history
set -o history

# echo shabang line and x number of lines of history to new script
echo /#/!//bin//bash > $SCRIPT_NAME.sh; history | tail -n $NUMBER_OF_LINES_BACK >> $SCRIPT_NAME.sh;
chmod u+x $SCRIPT_NAME.sh;

# Open the newly created script with vim
vim $SCRIPT_NAME.sh;
~