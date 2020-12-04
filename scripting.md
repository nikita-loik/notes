# Script File
Often, yet not necessarily, executable scripts are place in bin directory.

Depending on the terminal

* use relevant file extension (e.g. `.bash` or `.zsh`)
* use relevant first line (e.g. `#!/bin/bash` or `#!/bin/zsh`)

# Execute Script File
1. view file permissions

```zsh
ls -l
```

2. [change mode (access permissions) of a created script file](https://ss64.com/osx/chmod.html)

```zsh
chmod [MODE] [SCRIPT_PATH]
```
3. To make script runnable 

```zsh
chmod +x [SCRIPT_PATH]
```
4. add the directory where your script is to the PATH
```zsh
export PATH=$PATH:/PATH/TO/DIRECTORY
```
