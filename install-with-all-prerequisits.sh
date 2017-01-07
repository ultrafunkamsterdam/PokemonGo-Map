#!/usr/bin/env bash
BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
clear
#
# FOR EASY INSTALLATION USING 1 LINE. COPY BELOW LINE AND PASTE IT IN YOUR TERMINAL (DO NOT COPY THE HASH PLEASE).
# [[ -f install-with-all-prerequisits.sh ]] && rm install-with-all-prerequisits.sh; wget https://raw.githubusercontent.com/ultrafunkamsterdam/PokemonGo-Map-V2/develop/install-with-all-prerequisits.sh ; sudo chmod 775 install-with-all-prerequisits.sh && sudo bash ./install-with-all-prerequisits.sh
#
echo -e "\n\n\t======= This will install everything you need in order to install and run PokemonGo-Maps =======\n\n"
#echo -e "\n\n\tYou should run this script with sudo privileges:  sudo bash $0 \nIf yo " 
echo -e -n "\t";read -n 1 -s -p "Press any key to continue"

#echo -e "\n\n\tpress ctrl+c to cancel . I'll give you 10 seconds to copy above command to and press ctrl+C to cancel\
# this. After that, script will start running and giving lots of errors." && sleep 10
echo -e -n "\n\n\tStarting installation" && for i in {10..30};do echo -e -n "." ;((i++));sleep 0.1;done
echo -e "\n\n\tThere we go!!! Jihaaaaa" && sleep 4
clear

sudo apt-get -y update 

# NPM NODE AND LEGACY STUFF
sudo apt install -y libwww-curl-perl 

# NPM NODE MORE RECENT STUFF
sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get -y update
sudo apt-get install -y nodejs nodejs-legacy npm

#PYTHON
sudo apt-get install -y python2.7 python-pip python-dev python-virtualenv git
echo -e "Let's check version of NPM. Should be 3.10.x \n\n"
npm -v 
sleep 3
echo -e "Installing Grunt for building front-end assets\n" && sleep 1
npm install -g grunt-cli
sleep 2
clear
echo -e "\n\n\tDONE INSTALLING PREREQUISITS" && sleep 4
echo -e "\n\n\tNow we are going to install PokemonGo-Map with Hash Server support." && sleep 4
echo -e -n "\n\n\tHERE WE GO AGAIN!" && for i in {10..30};do echo -e -n "." ;((i++));sleep 0.1;done

[[ -f easy-install.sh ]] && rm easy-install.sh
wget https://raw.githubusercontent.com/ultrafunkamsterdam/PokemonGo-Map-V2/develop/easy-install.sh && sudo chmod 755 easy-install.sh
bash ./easy-install.sh

