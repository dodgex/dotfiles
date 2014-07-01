#!/bin/bash

mkdir -p ~/git
cd ~/git

if [ ! -d ".git" ]; then

  if hash git 2>/dev/null; then
    echo "git is already installed!"
    exit 1
  fi
  
  apt-get -y install build-essential unzip
  apt-get -y install wget libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
  
  wget https://github.com/git/git/archive/master.zip
  unzip master.zip

  cd git-master
  make prefix=/usr all
  make prefix=/usr install

  cd ..
  rm master.zip
  rm -rf ~/git/git-master

  git clone https://github.com/git/git.git .  
  
  cat > update.sh <<EOF
#!/bin/bash
git pull
make prefix=/usr all
make prefix=/usr install
git --version
 
EOF

chmod +x update.sh

fi

./update.sh
