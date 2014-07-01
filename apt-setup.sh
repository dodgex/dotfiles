#!/bin/bash

cat > '/etc/apt/sources.list' <<EOF
#######################################################################################
# Hetzner APT-Mirror

deb     http://mirror.hetzner.de/debian/packages wheezy main contrib non-free
deb     http://mirror.hetzner.de/debian/security wheezy/updates main contrib non-free


#######################################################################################
# Backupmirror
#
deb     http://cdn.debian.net/debian/ wheezy main non-free contrib
deb-src http://cdn.debian.net/debian/ wheezy main non-free contrib

deb     http://security.debian.org/  wheezy/updates  main contrib non-free
deb-src http://security.debian.org/  wheezy/updates  main contrib non-free


#######################################################################################
# dotdeb.org
deb http://ftp.hosteurope.de/mirror/packages.dotdeb.org/ stable all
deb-src http://ftp.hosteurope.de/mirror/packages.dotdeb.org/ stable all

EOF


wget http://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
rm dotdeb.gpg

apt-get update
