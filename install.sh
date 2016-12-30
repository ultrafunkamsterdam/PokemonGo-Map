#!/usr/bin/env bash
BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $BASE_DIR

apt-get -y update 

# NPM NODE AND LEGACY STUFF
apt install -y nodejs nodejs-legacy nodejs npm libwww-curl libwww-perl 

# NPM NODE MORE RECENT STUFF
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get -y update
apt-get install -y nodejs nodejs-legacy npm

#PYTHON
apt-get install -y python2.7 python-pip python-virtualenv git
npm -v 
npm install -g grunt-cli

virtualenv .
. bin/activate
pip install -r requirements.txt --upgrade
git submodule init && git submodule update
npm install
grunt build
deactivate

echo "DONE INSTALLING"
echo "script not finished yet so use carefully"

exit
