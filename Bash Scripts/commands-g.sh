#!/bin/bash

# This file was written bu dualznz © 2020
# You can freely distribute this file and its contents but there is no liability
# if anything goes wrong when using this file.

# start

# colors
# forground colors
fgBlack=$(tput setaf 0)
fgRed=$(tput setaf 1)
fgGreen=$(tput setaf 2)
fgYellow=$(tput setaf 3)
fgBlue=$(tput setaf 4)
fgMagenta=$(tput setaf 5)
fgCyan=$(tput setaf 6)
fgWhite=$(tput setaf 7)
# background colors
bgBlack=$(tput setab 0)
bgRed=$(tput setab 1)
bgGreen=$(tput setab 2)
bgYellow=$(tput setab 3)
bgBlue=$(tput setab 4)
bgMagenta=$(tput setab 5)
bgCyan=$(tput setab 6)
bgWhite=$(tput setab 7)
# styles
bold=$(tput bold)
underlined=$(tput smul)
standout=$(tput smso)
halfBright=$(tput dim)
reset=$(tput sgr0)

# layout styling
echo " "
echo "${bold}###### please select a command to run ######${reset}"
echo "  ${fgRed}${bold}1)${reset} ${bold}(Update / Upgrade)${reset} server"
echo "  ${fgRed}${bold}2)${reset} Open ${bold}(fstab) configuration file"
echo "  ${fgRed}${bold}6)${reset} Exit"

# commands
read n
case $n in
  1) apt update && apt upgrade ;;
  2) nano /etc/fstab ;;
  6) exit ;;
  *) echo "${bold}${fgRed}invalid${reset} option selected" && ./commands-r.sh ;;
esac

#end