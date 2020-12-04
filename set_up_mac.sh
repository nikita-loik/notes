#!/bin/zsh
# [python developer guide for Mac OS X](https://devguide.python.org/setup/#macos-and-os-x)
# XCODE
xcode-select --install

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew upgrade && brew update

brew install openssl xz gdbm
./configure --with-pydebug --with-openssl=$(brew --prefix openssl)

CPPFLAGS="-I$(brew --prefix openssl)/include" \
  LDFLAGS="-L$(brew --prefix openssl)/lib" \
  ./configure --with-pydebug

make -s -j2
# =====================================================================
# JAVA
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk11
java --version
# List all available java versions:
# /usr/libexec/java_home -V
# Change java version:
# export JAVA_HOME=`/usr/libexec/java_home -v [VERSION]`  # e.g. [VERSION] 1.8

# GIT LFS
brew install git-lfs
git lfs install

# SCALA
brew install scala

# SPARK
brew install apache-spark

# PYTHON
brew install python
which python
python --version
which python3
python3 --version
# PIP
pip3 install --upgrade pip
pip3 --version

# PIPENV
brew install pipenv

# POETRY https://python-poetry.org/
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
source $HOME/.poetry/env
poetry --version


# VIRTUALENV
pip3 install virtualenv
virtualenv --version

# NEOVIM
brew install neovim

# 13. Install VS Code.
# 14. Install Docker.

