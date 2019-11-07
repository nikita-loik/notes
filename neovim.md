# [NeoVim](https://neovim.io/)
## Links & References
[Set up NeoVim for Python 1](https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/#install-vim-plug)
[Set up NeoVim for Python 2](https://yufanlu.net/2018/09/03/neovim-python/)
## [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
```bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-osx64/bin/nvim
```
## Install Relevan Python Packages
```bash
pip install pynvim
pip install jedi
pip install flake8
pip install autopep8
```
## [Configure NeoVim](https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/)
1. create a configuration file `~/.config/nvim/init.vim` (analog of the `~/.vimrc` in Vim)
2. install plugin manager ([vim-plug](https://github.com/junegunn/vim-plug))
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
3. restart NeoVim
4. create `~/.local/share/plugged` 
5. to `init.vim` add the following:
```
# 1. specify a directory for plugins
# *NB!* use single quotes (')
call plug#begin('~/.local/share/nvim/plugged')
# 2. fetch https://github.com/junegunn/vim-easy-align (shorthand notation)
Plug 'davidhalter/jedi-vim'
# 3. initialize plugin system
call plug#end()
```
5. create `~/.local/share/plugged`
