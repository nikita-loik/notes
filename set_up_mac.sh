#!/bin/sh

# 1. Install XCODE or XCODE-beta from https://developer.apple.com/xcode/resources/
xcode-select --install

# 2. Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 2. Install & upgrade HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew upgrade && brew update

# 3. Install NEOVIM
brew install neovim

# 4. Install PYENV
brew install pyenv

# To access the pyenv command-line utility,
# set an environment variable (PYENV_ROOT) to point to the pyenv directory.
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc

# Add $PYENV_ROOT/bin to your $PATH
# Put pyenv first in the search path,
# so that the OS finds pyenv’s Python(s) before any other Pythons
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc

# To (1) initialise pyenv each time you open a terminal
# and (2) to enable shims and autocompletion add `pyenv init` to your shell.
# Please make sure eval "$(pyenv init -)" is placed toward the end of
# the shell configuration file since it manipulates PATH during the initialisation.
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# 5. Install Python DEPENDENCIES
brew install openssl readline sqlite3 xz zlib gdbm bzip2


# bzip2 is keg-only, which means it was not symlinked into /usr/local,
# https://docs.brew.sh/FAQ#what-does-keg-only-mean
# macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.

# If you need to have bzip2 first in your PATH run:
echo 'export PATH="/usr/local/opt/bzip2/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc

# For compilers to find zlib, bzip2, and openssl you may need to set:

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib -L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include -I/usr/local/opt/openssl@1.1/include"

# 6. Install Relevant Python Version & Set It as Global
pyenv install 3.8.6
pyenv global 3.8.6

# 7. Upgrade PIP
pip install --upgrade pip
pip --version


# 8. Set LANG
# NB! Alternatively, adit relevant section of `~/.zshrc`
echo 'export LANG="en_US.UTF-8"' >> ~/.zshrc
echo 'export LC_ALL="en_US.UTF-8"' >> ~/.zshrc
echo 'export LC_CTYPE="en_US.UTF-8"' >> ~/.zshrc

# 9. Set Python PACKAGE MANAGEMENT
# A. VIRTUALENV (https://virtualenv.pypa.io/)
pip install virtualenv
virtualenv --version

# B. POETRY (https://python-poetry.org/)
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
source $HOME/.poetry/env
poetry --version

# C. PIPENV
brew install pipenv
pipenv --version


# 10. Install GIT LFS
brew install git-lfs
git lfs install

# 11. Set GIT
touch ~/.gitignore_global
git config --global core.excludesFile ~/.gitignore_global
echo '.DS_Store' >> ~/.gitignore_global
echo '.vscode' >> ~/.gitignore_global
echo '.ipynb_checkpoints' >> ~/.gitignore_global
echo '.env' >> ~/.gitignore_global
echo '__pycache__/' >> ~/.gitignore_global
git config --list --show-origin

# =====================================================================
# 12. Install JAVA
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk11
java --version
# List all available java versions:
# /usr/libexec/java_home -V
# Change java version:
# export JAVA_HOME=`/usr/libexec/java_home -v [VERSION]`  # e.g. [VERSION] 1.8

# 13. Install SCALA
brew install scala

# 14. Install SPARK
brew install apache-spark

# 15. Alternative way to install PYTHON
brew install python
which python
python --version
which python3
python3 --version

# 13. Install VS Code
# 14. Install Docker
# 15. SQLite
# Install SQLite3
brew install sqlite3
# Install SQLite browser
brew install --cask db-browser-for-sqlite
# 15. SSH Key
# [SSH Key](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
# [Add SSH Key to GitHub](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)
# Generate SSH key:
ssh-keygen -t ed25519 -C "your_email@example.com"
# Start the ssh-agent in the background:
eval "$(ssh-agent -s)"

touch ~/.ssh/config

# Edit `~/.ssh/config` — add:
# Host *
#  AddKeysToAgent yes
#  UseKeychain yes
#  IdentityFile ~/.ssh/id_ed25519
