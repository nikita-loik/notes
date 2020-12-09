### 1. install virtualenv
```shell
pip install virtualenv
virtualenv --version
```
### A.b. create virtual environment using particular version of python
```shell
virtualenv -p PYTHON_VERSION VIRTUAL_ENVIRONMENT_NAME
```
## B. activate virtual environment

## C. enable jupyter notebook within virtual environment
### C.a. install jupyter
```shell
pip install jupyter
```
### C.b. install ipykernel (whatever that actually means)
```shell
python -m ipykernel install --user --name=VIRTUAL_ENVIRONMENT_NAME
```

Possible alternative
```shell
pip install ipykernel
ipython kernel install --user --name=VIRTUAL_ENVIRONMENT_NAME
```
When creating a new notebook select particular virtual environment.
## D. export requirements
```shell
pip freeze > requirements.txt
```