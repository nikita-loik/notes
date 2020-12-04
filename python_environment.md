# Python-Package Management

## 1. [virtualenv](https://virtualenv.pypa.io/en/latest/)
* [via pip](https://pipenv.pypa.io/en/latest/install/#pragmatic-installation-of-pipenv)
```bash
python -m pip install --user virtualenv
```

`virtualenv --version`

* [via homebrew](https://pipenv.pypa.io/en/latest/install/#homebrew-installation-of-pipenv-discouraged)

|location|path|
|:--|:--|
|virtualenv|`/Users/USER_NAME/Library/Python/3.8/bin/virtualenv`|
|virtual environment|`PROJECT_NAME/VENV_NAME`|
|IPy kernel|`/Users/USER_NAME/Library/Jupyter/kernels/VENV_NAME`|


|location|path|
|:--|:--|
|`source VENV_NAME/bin/activate`|`deactivate`|

* Package Management

pipenv install -r requirements.txt


## 2. [pipenv](https://pipenv.pypa.io/en/latest/)
```bash
brew install pipenv
brew upgrade pipenv
```

`pipenv --version`

|location|path|
|:--|:--|
|`pipenv shell`|`exit`|

```zsh
pipenv --rm
```

|location|path|
|:--|:--|
|pipenv|/usr/local/bin/pipenv|
|virtual environment|`/Users/USER_NAME/.local/share/virtualenvs/VENV_NAME`|
|IPy kernel|`/Users/USER_NAME/Library/Jupyter/kernels/VENV_NAME`|

```
pipenv --python 3.8
pipenv install ipykernel
pipenv shell
python -m ipykernel install --user --name=`basename $VIRTUAL_ENV`
python -m ipykernel install --user --display-name=`basename $VIRTUAL_ENV` --name=`basename $VIRTUAL_ENV`
pipenv install jupyter  # fails
pip install -U pip
pip install jupyter
```

Find path of your environment
```
pipenv --venv
```

Find path of your project
```
pipenv --where
```

Whithout setting the python version.
```
Creating a virtualenv for this project...
Pipfile: /Users/nikita/Documents/dummy/pipenv_test/Pipfile
Using /usr/local/bin/python3 (3.9.0) to create virtualenv...
```


* Package Management
pipenv install -r requirements.txt



## 3. [poetry](https://python-poetry.org/)
```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3
```
`poetry --version`
|location|path|
|:--|:--|
|poetry|/Users/USER_NAME/.poetry/bin/poetry|
|virtual environment|/Users/USER_NAME/Library/Caches/pypoetry/virtualenvs/VENV_NAME|
|IPy kernel||

show the python versions poetry can use
`poetry env list`
poetry env use 

```
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
```

```
cd PROJECT_PATH
poetry init
...
```

```
poetry env use 3.8
poetry add --dev jupyter ipykernel
```


https://blog.jayway.com/2019/12/28/pyenv-poetry-saviours-in-the-python-chaos/
https://www.pythoncheatsheet.org/blog/python-projects-with-poetry-and-vscode-part-1/
https://www.pythoncheatsheet.org/blog/python-projects-with-poetry-and-vscode-part-2/

* Package Management

|`cd PROJECT_NAME`<br>`virtualenv PROJECT_NAME`|`cd PROJECT_NAME`<br>`pipenv PROJECT_NAME`|`cd PROJECT_NAME`<br>`poetry init`|
|`pip install PACKAGE`|`pipenv install PACKAGE`|`poetry add PACKAGE`|
|`source VENV_NAME/bin/activate`|`pipenv shell`|`poetry shell`|
||`pipenv --python VERSION`||



# Python Package Managing using [pyenv](https://github.com/pyenv/pyenv)

[pyenv tutorial](https://realpython.com/intro-to-pyenv/)

Install.
```
brew update
brew install pyenv
```

To access the pyenv command-line utility (NB! for `zsh`).
```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
```

```
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
```

```
pyenv install 3.8.6
```
versions available through pyenv
`pyenv versions`
version currently active
`pyenv version`


set global version
`pyenv global 3.6.8`
set local version
`pyenv local 2.7.15`


echo 'poetry completions zsh > ~/.zfunc/_poetry' >> ~/.zshrc

CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix bzip2)/include -I$(brew --prefix readline)/include -I$(xcrun --show-sdk-path)/usr/include" LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib" pyenv install --patch 3.8.0 < <(curl -sSL https://github.com/python/cpython/commit/8ea6353.patch\?full_index\=1)


[install python 3.8.0 on BigSur using pyenv](https://dev.to/kojikanao/install-python-3-8-0-via-pyenv-on-bigsur-4oee)

https://blog.jayway.com/2019/12/28/pyenv-poetry-saviours-in-the-python-chaos/