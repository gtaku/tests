#!/bin/sh

# ~/bin/up.sh
ls $HOME/Vagrant/ | xargs -I{} bash -c "cd $HOME/Vagrant/{} && vagrant up --provision"

