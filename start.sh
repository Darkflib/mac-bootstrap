#!/bin/bash

wget https://desktop.docker.com/mac/main/arm64/Docker.dmg
open Docker.dmg

echo "Press any key to continue once Docker is installed"
while [ true ] ; do
read -t 5 -n 1
if [ $? = 0 ] ; then
exit ;
else
echo "waiting for the keypress"
fi
done


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle
