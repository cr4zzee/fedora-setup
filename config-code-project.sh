#!/bin/bash

google-chrome https://accounts.google.com/ > /dev/null 2>&1 &
google-chrome https://bitbucket.org/dashboard/repositories > /dev/null 2>&1 &
ssh-keygen -b 2048 -t rsa -f $HOME/.ssh/id_rsa -C "tung.tran@your.rentals" -q -N ""
cat ~/.ssh/id_rsa.pub