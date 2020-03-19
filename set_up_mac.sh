# 1. Install xcode command-line tools:
xcode-select --install

# 2. Install homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# 3. Install python:
brew install python
which python
python --version
which python3
python3 --version

# 4. Install virtualenv:
pip3 install virtualenv
virtualenv --version

# 5. Install neovim:
brew install neovim

# 6. Install Java:
# this option may not work
brew cask install java
# then use this option
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# 7. Install Scala:
brew install scala

# 8. Install Apache Spark:
brew install apache-spark

# 9. Install VS Code.
# 10. Install Docker.

