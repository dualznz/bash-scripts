#!/bin/bash

# This file was written bu dualznz © 2020
# You can freely distribute this file and its contents but there is no liability
# if anything goes wrong when using this file.

# start

# colors
# forground colors
fgBlack=`tput setaf 0`
fgRed=`tput setaf 1`
fgGreen=`tput setaf 2`
fgYellow=`tput setaf 3`
fgBlue=`tput setaf 4`
fgMagenta=`tput setaf 5`
fgCyan=`tput setaf 6`
fgWhite=`tput setaf 7`
# background colors
bgBlack=`tput setab 0`
bgRed=`tput setab 1`
bgGreen=`tput setab 2`
bgYellow=`tput setab 3`
bgBlue=`tput setab 4`
bgMagenta=`tput setab 5`
bgCyan=`tput setab 6`
bgWhite=`tput setab 7`
# styles
bold=`tput bold`
underlined=`tput smul`
standout=`tput smso`
halfBright=`tput dim`
reset=`tput sgr0`

# layout styling
echo " "
echo "${bold}###### please select a command to run ######${reset}"
echo "  ${fgRed}${bold}1)${reset} List ${bold}(enabled)${reset} docker containers"
echo "  ${fgRed}${bold}2)${reset} Open docker ${bold}(env)${reset} configuration file"
echo "  ${fgRed}${bold}3)${reset} Open docker ${bold}(overrides)${reset} script file"
echo "  ${fgRed}${bold}4)${reset} Open ${bold}(dockstarter)${reset} configuration file"
echo "  ${fgRed}${bold}5)${reset} Compose ${bold}(dockstarter)${reset} configuration file"
echo "  ${fgRed}${bold}6)${reset} Restart ${bold}(all)${reset} docker containers"
echo "  ${fgRed}${bold}7)${reset} Kill ${bold}(all)${reset} docker containers"
echo "  ${fgRed}${bold}8)${reset} Goto docker ${bold}(appdata)${reset} directory"
echo "  ${fgRed}${bold}9)${reset} Upgrade ${bold}(dockstarter)${reset} system files"
echo "  ${fgRed}${bold}10)${reset} Update ${bold}(dockstarter)${reset} containers to latest build(s)"
echo "  ${fgRed}${bold}111)${reset} Kill & restart ${bold}(docker)${reset} container(s)"
echo "  ${fgRed}${bold}15)${reset} Exit"

# commands
read n
case $n in
  1) grep _ENABLED= ~/.docker/compose/.env && ./commands-u.sh;;
  2) sudo nano ~/.docker/compose/.env && ./commands-u.sh;;
  3) sudo nano ~/.docker/compose/docker-compose.override.yml && ./commands-u.sh;;
  4) sudo ds && ./commands-u.sh;;
  5) sudo ds -c && ./commands-u.sh;;
  6) docker restart $(docker ps -a -q) && ./commands-u.sh;;
  7) docker kill $(docker ps -q) && ./commands-u.sh;;
  8) cd ~/.config/appdata && ls && exec bash;;
  9) ds -u && ./commands-u.sh;;
  10) ds -c pull && ds -c up && ./commands-u.sh;;
  11) cd ~/.docker/compose && docker-compose down -v && docker-compose up -d ;;
  15) exit;;
  *) echo "${bold}${fgRed}invalid${reset} option selected" && ./commands-u.sh;;
esac

# end