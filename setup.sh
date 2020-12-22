#!/bin/bash

line="#########################################################"

check_program() {
  $1
  if echo $? == 0;
  then echo "$1 Everything OK.";
  else
  echo "Error with program installation $1";
  fi
}

echo "## Setting up ubuntu dev environment ##"
echo $line
    apt update
    apt -y upgrade

echo $line
echo "Installing vim";
    apt -y install vim;
    apt update;
echo $line

echo $line
echo "Installing net-tools";
    apt install -y net-tools;
    apt update;
echo $line

echo $line
echo "Installing curl";
    apt install -y curl
    apt update

echo $line

echo "Installing nodejs";
    curl -sL https://deb.nodesource.com/setup_15.x | bash -
    apt install -y nodejs
echo $line

echo $line
echo "Installing yarn";
    npm install -y -g yarn
    echo "Installation Complete"
    check_program "yarn -v"
echo $line

echo $line
echo "Installing git";
    apt install -y git
    echo "Installation Complete"
    check_program "git --version"
    git config --global user.name nopro
    git config --global user.email rjwharry2003@gmail.com
    apt update
echo $line

echo $line
echo "Installing docker";
    apt install -y docker.io
    echo "Installation Complete"
    check_program "docker --version"
    apt update
echo $line

echo $line
echo "Installing anaconda"
    cd /tmp
  curl -O https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
  bash Anaconda3-2020.11-Linux-x86_64.sh
  source ~/.bashrc
echo $line
