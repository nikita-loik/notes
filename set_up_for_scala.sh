# 1. Install xcode command-line tools:
xcode-select --install

# 2. Install homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# 3. Install neovim:
brew install neovim

# 4. Install Java:
# this option may not work
brew cask install java
# then use this option
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# 5. Install Scala:
brew install scala

# 5. Install Apache Spark:
brew install apache-spark
