#!/bin/sh
#
# pear installation

echo "› installers:pear"

# pear version
if test ! $(pear version)
then

curl -O  http://pear.php.net/go-pear.phar
sudo php -d detect_unicode=0 go-pear.phar

# http://stackoverflow.com/questions/32893056/installing-pecl-and-pear-on-os-x-10-11-el-capitan-or-macos-10-12-sierra#answer-34536398
# 1 - /usr/local/pear
# 4 - /usr/local/bin
# https://coolestguidesontheplanet.com/installing-pear-on-osx-10-11-el-capitan/
# Duplicate php.ini from /etc
# Add under Paths and directories
# include_path = ".:/Users/tm/pear/share/pear/"
# Install phpcs
pear install PHP_codesniffer

fi