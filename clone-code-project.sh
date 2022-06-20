#!/bin/bash

mkdir -p ~/yr/app/configuration-management && cd $_ && git clone git@bitbucket.org:yourrentals/configuration-management.git .
sed -i -e 's+https://bitbucket.org/+git@bitbucket.org:+g' yr.sh
./yr.sh init
cd ~/yr
git clone git@bitbucket.org:yourrentals/your-rentals-functional-test.git