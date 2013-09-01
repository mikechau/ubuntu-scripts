#!/bin/bash

# Initial setup from: http://ryanbigg.com/2010/12/ubuntu-ruby-rvm-rails-and-you/

# CHECK FOR UPDATES
sudo apt-get update -y
sudo apt-get upgrade

# INSTALL RVM / RUBY / RAILS
sudo apt-get install curl
curl -L get.rvm.io | bash -s stable --auto
. ~/.bash_profile
rvm requirements
rvm install 2.0.0
rvm --default use 2.0.0
rvm gemset create Rails3.2
rvm use 2.0.0@Rails3.2 --default

# ADDITIONAL PACKAGES
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev \
curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 \
libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison  \
subversion pkg-config software-proprieties-common

# INSTALL DB DRIVERS
sudo apt-get install libmysqlclient-dev
sudo apt-get install libpq-dev

# INSTALL NODEJS
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
sudo npm install grunt-cli -g

# INSTALL RAILS
echo 'gem: --no-ri --no-rdoc' > ~/.gemrc
gem install rails -v 3.2.14

# INSTALL FAIL2BAN
sudo apt-get install fail2ban

# INSTALL NGINX
# to be continued...
