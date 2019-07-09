# Safari Setup
https://duckduckgo.com/?kad=en_GB&kah=wt-wt&kp=-2&kz=-1&kc=-1&k1=-1&kk=-1&kaj=m&kam=osm&kay=b&kak=-1&kax=-1&kaq=-1&kap=-1&kao=-1&kau=-1&kae=d&ks=l&km=m&kw=n&ko=1&kaf=-1&kf=-1

# SSH Key
## Create SSH Folder
```bash
mkdir ~/.ssh
```
## Generate SSH Key
```bash
ssh-keygen -t rsa
```
optionaly
```
ssh-keygen -t rsa -C "[e_mail]"
```
## Add SSH Config
make ~/.ssh/config file

`Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa`

