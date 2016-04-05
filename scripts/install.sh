#!/bin/bash

#Call deploy for everything we've got

install_scripts=`find $HOME/code -regex "$HOME/code/.*/install.sh"`

for script in $install_scripts
do
	echo $script
	bash $script
done