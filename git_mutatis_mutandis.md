# configure git
## show configuration
```bash
git config --list
```
## adjust configuration
```bash
git config --global user.name 
git config --global user.mail
git config --global color.ui "auto"
git config --global core.editor "nvim"
```


# remove previously cached files
## remove file
```bash
git rm --cached <file>
```
## remove whole directory 
```bash
git rm -r --cached <folder>
```

