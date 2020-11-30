#!/bin/zsh

# XCODE
xcode-select --install

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew upgrade && brew update

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

# VIRTUALENV
pip3 install virtualenv
virtualenv --version

# NEOVIM
brew install neovim

# 13. Install VS Code.
# 14. Install Docker.

