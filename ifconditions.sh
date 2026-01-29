#!/bin/bash
echo "Which program or package do you want to attempt to install"
read -r packagename;
if [[ "$(uname)" == "Darwin" ]]; then
  brew install "$packagename";
elif [[ "$(uname)" == "Linux" ]]; then
  . /etc/os-release;
  if [[ "$NAME" == "Red Hat"* ]]; then
    sudo yum install "$packagename";
  elif [[ "$NAME" == "Ubuntu"* ]]; then
    sudo apt-get install "$packagename";
  fi
fi