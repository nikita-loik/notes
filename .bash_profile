# 1. set terminal-history parameters
# A. ignore duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
# B. append to the history file, rather than overwrite it
shopt -s histappend
# C. set history length and filesize
HISTSIZE=100000
HISTFILESIZE=20000
#D. better search history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


# A. enable colouring of the terminal
export CLICOLOR=1
# B. specify the colours of the attributes
export LSCOLORS=ExFxBxDxCxegedabagacad


# C. customise LSCOLORS
# default “exfxcxdxbxegedabagacad”
# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky bit

ex –> directory / blue / default
fx –> symbolic link / magenta / default
cx –> socket / green / default
dx –> pipe / brown / default
bx –> executable / red / default
eg –> block special / blue / cyan
ed –> character special / blue / brown
ab –> executable with setuid / black / red
ag –> executable without setuid / black / cyan
ac –> directory with sticky / black / green
ad –> directory without sticky / black / brown

# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset