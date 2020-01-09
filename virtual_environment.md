# virtualenv
## A. create virtual environment
### A.a. install virtualenv
```bash
pip install virtualenv
virtualenv --version
```
### A.b. create virtual environment using particular version of python
```bash
virtualenv -p [PYTHON_VERSION] [VIRTUAL_ENVIRONMENT_NAME]
```
## B. activate virtual environment

## C. enable jupyter notebook within virtual environment
### C.a. install jupyter
```bash
pip install jupyter
```
### C.b. install ipykernel (whatever that actually means)
```bash
python -m ipykernel install --user --name=[VIRTUAL_ENVIRONMENT_NAME]
```

Possible alternative
```bash
pip install ipykernel
ipython kernel install --user --name=[VIRTUAL_ENVIRONMENT_NAME]
```
When creating a new notebook select particular virtual environment.
## D. export requirements
```bash
pip freeze > requirements.txt
```

# virtualenv vs conda

|conda|virtualenv & pip|
|:---:|:---:|
|```conda --version```|```pip --version``` & ```virtualenv --verison```|
|||
|```conda create --name [env_name] python=3.7 -y```|```virtualenv -p [PYTHON_VERSION] [VIRTUAL_ENVIRONMENT_NAME]```|
|```conda activate [env_name]```|```source [env_name]/bin/activate```|
|```conda env export > requirements.yml```|```pip freeze > requirements.txt```|
|```conda env create -f requirements.yml```|```pip install -r requirements.txt```|
|```conda info --envs```|environments are isolated in a project folder|
|```conda list```|```pip freeze```|
|```conda deactivate```|```deactivate```|
|```conda remove --name [env_name] --all```|delete the env folder|

