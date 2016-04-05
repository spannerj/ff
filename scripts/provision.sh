#!/usr/bin/env bash

echo "Install git..."
yum install git -y

#Copy script files (so everything is as would be in real environment)
sudo -i -u vagrant bash -c "cp /vagrant/scripts/*.sh ~/ && chmod 0700 ~/*.sh"

if [ ! -d code ]; then
	echo "make code directory"
	mkdir code
fi

cd code

if  [ ! -d lrfantasy ]; then
	echo "clone repo"
	git clone https://github.com/spannerj/lrfantasy.git
	cd lrfantasy
	git pull
	git fetch
	git checkout amend_postgres
fi

#Run project installs
sudo -i -u vagrant bash -c "~/install.sh"