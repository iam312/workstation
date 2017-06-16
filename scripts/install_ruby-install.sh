#!/bin/bash
mkdir -p /tmp/ruby-install
cd /tmp/ruby-install

wget -O ruby-install-0.6.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.0.tar.gz
tar -xzvf ruby-install-0.6.0.tar.gz
cd ruby-install-0.6.0/
sudo make install

ruby-install -L
ruby-install ruby 2.4.1
