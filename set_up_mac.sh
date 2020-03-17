# 1. Install command-line tools:
echo "===installing COMMAND-LINE TOOLS"
xcode-select --install
echo "===COMMAND-LINE TOOLS installed"

# 2. Install homebrew:
echo "===installing HOMEBREW==="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "===HOMEBREW installed==="

# 3. Istall neovim:
echo "===installing NEOVIM==="
brew install neovim
echo "===NEOVIM installed==="

# 4. Install VS Code.
# 5. Install Docker.

