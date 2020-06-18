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

# 4. Install Scala:
brew install scala

# 5. Install Spark:
brew install apache-spark

# 6. Install python:
brew install python
which python
python --version
which python3
python3 --version

# 7. Install virtualenv:
pip3 install virtualenv
virtualenv --version

# 8. Install neovim:
brew install neovim

# 9. Install Java:
# this option may not work
brew cask install java
# then use this option
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# 10. Install Scala:
brew install scala

# 11. Install Apache Spark:
brew install apache-spark

# 12. Install VS Code.
# 13. Install Docker.

