#!/usr/bin/env bash
BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
clear
#
# Correct line to install
# [[ -f install-with-all-prerequisits.sh ]] && rm install-with-all-prerequisits.sh; wget https://raw.githubusercontent.com/ultrafunkamsterdam/PokemonGo-Map-V2/develop/install-with-all-prerequisits.sh ; sudo chmod 775 install-with-all-prerequisits.sh && sudo bash ./install-with-all-prerequisits.sh
#
echo -e "\n\n\t======= This will install everything you need to run PokemonGo-Maps =======" 
echo -e "\n\n\tYou should run this script with root privileges:  sudo bash $0"  
echo -e "\n\n\tpress ctrl+c to cancel . I'll give you 5 seconds to copy above command to run as sudo user" && sleep 5
echo -e -n "\n\n\tStarting installation" && for i in {10..30};do echo -e -n "." ;((i++));sleep 0.1;done
echo -e "\n\n\tThere we go" && sleep 1.5
clear

apt-get -y update 

# NPM NODE AND LEGACY STUFF
apt install -y libwww-curl-perl 

# NPM NODE MORE RECENT STUFF
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get -y update
apt-get install -y nodejs nodejs-legacy npm

#PYTHON
apt-get install -y python2.7 python-pip python-dev python-virtualenv git
npm -v 
npm install -g grunt-cli
clear
echo -e "\n\n\tDONE INSTALLING PREREQUISITS" && sleep 2
echo -e "\n\n\tNow we are going to install PokemonGo-Map with hashing server support. You'll be prompted to enter your HASHING API key." && sleep 2
echo -e -n "\n\n\tHERE WE GO AGAIN!" && for i in {10..30};do echo -e -n "." ;((i++));sleep 0.1;done


[[ ${USER} == ROOT ]] && echo -e "\n\nYou are running as root.\nFor PokemonGo-Maps i recommend running the installscript as normal user.
echo -e "\n\Copy below line and paste in your terminal as normal user. You might be asked to provide sudo credentials.n\\n"
echo -e "[[ -f easy-install.sh ]] && rm easy-install.sh ; wget https://raw.githubusercontent.com/ultrafunkamsterdam/PokemonGo-Map-V2/develop/easy-install.sh && sudo chmod 755 easy-install.sh ; bash./easy-install.sh"
echo -e "'\n\nGood luck!" && sleep 3
exit

