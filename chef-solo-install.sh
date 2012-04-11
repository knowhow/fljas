#!/bin/bash

# This runs as root on the server

chef_binary=/var/lib/gems/1.9.1/bin/chef-solo

# Are we on a vanilla system?
if ! test -f "$chef_binary"; then
        # Install Ruby and Chef
        apt-get install -y ruby1.9.1 ruby1.9.1-dev make &&
        gem1.9.1 install --no-rdoc --no-ri chef --version 0.10.0
fi &&

chef-solo --version
