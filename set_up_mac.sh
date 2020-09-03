# 1. Install xcode command-line tools:
xcode-select --install

# 2. Install homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew upgrade && brew update

# 3. Check Java version:
# NEW
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk11
# OLD
# brew cask install java
java --version
# List all available java versions:
# /usr/libexec/java_home -V
# Change java version:
# export JAVA_HOME=`/usr/libexec/java_home -v [VERSION]`  # e.g. [VERSION] 1.8

# 4. Install Git LFS:
brew install git-lfs
git lfs install

# 5. Install Scala:
brew install scala

# 6. Install Spark:
brew install apache-spark

# 7. Install python:
brew install python
which python
python --version
which python3
python3 --version
# 6.2. Upgrade pip:
pip3 install --upgrade pip
pip3 --version

# 8. Install virtualenv:
pip3 install virtualenv
virtualenv --version

# 9. Install neovim:
brew install neovim

# 10. Install Java:
# this option may not work
brew cask install java
# then use this option
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# 11. Install Scala:
brew install scala

# 12. Install Apache Spark:
brew install apache-spark

# 13. Install VS Code.
# 14. Install Docker.

