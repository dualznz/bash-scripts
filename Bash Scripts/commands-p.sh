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
echo "${bold}###### please select which phantombot option you would like to do ######${reset}"
echo "  ${fgRed}${bold}1)${reset} Start ${bold}(phantombot)${reset} server"
echo "  ${fgRed}${bold}2)${reset} Check ${bold}(phantombot)${reset} server"
echo "  ${fgRed}${bold}3)${reset} Restart ${bold}(phantombot)${reset} server"
echo "  ${fgRed}${bold}4)${reset} Stop ${bold}(phantombot)${reset} server"
echo "  ${fgRed}${bold}10)${reset} Exit"

# commands
read n
case $n in
  1) systemctl start phantombot && ./commands-p.sh ;;
  2) systemctl status phantombot && ./commands-p.sh ;;
  3) systemctl restart phantombot && ./commands-p.sh ;;
  4) systemctl stop phantombot && ./commands-p.sh ;;
  10) exit ;;
  *) echo "${bold}${fgRed}invalid${reset} option selected" && ./commands-p.sh ;;
esac

#end