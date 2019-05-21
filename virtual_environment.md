# A. create virtual environment
## A.a. install virtualenv
```bash
pip install virtualenv
virtualenv --version
```
## A.b. create virtual environment using particular version of python
```bash
virtualenv -p [python_version] [virtual_environment_name]
```
# B. activate virtual environment

# C. enable jupyter notebook within virtual environment
## C.a. install jupyter
```bash
pip install jupyter
```
## C.b. install ipykernel (whatever that actually means)
```bash
python -m ipykernel install --user
```

# D. export requirements
```bash
pip freeze > requirements.txt
```