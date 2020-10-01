#!/bin/zsh

# CREATE AND ACTIVATE VIRTUAL ENVIRONMENT =============================
# 1. Get working directory name (without full path).
dir_name=${PWD##*/}

# 2. Replace '-' with '_' in a name.
venv_stem="${dir_name//-/_}"

# 3. Get virtual environment name.
venv_name="venv_${venv_stem}"
echo "===creating virtual environment ${venv_name}==="

# 4. Create virtual environment.
virtualenv -p python3 ".${venv_name}"

# 5. Activate virtual environment.
source ".${venv_name}/bin/activate"

# 6. Upgrade pip.
pip install -U pip

# JUPYTER =============================================================
pip install jupyter

# KERNELS =============================================================
# 1. IPython
python -m ipykernel install --user --name="${venv_stem}_py"

# 2 Scala
# 2.1. spylon-kernel (https://pypi.org/project/spylon-kernel/).
# NB! seems to work just fine.
pip install spylon-kernel
python -m spylon_kernel install --user --name="${venv_stem}_scala"
# 2.2. almond kernel (https://almond.sh/).
# NB! doesn't work so well.
# SCALA_VERSION=2.13.1 ALMOND_VERSION=0.9.1
# curl -Lo coursier https://git.io/coursier-cli
# chmod +x coursier
# ./coursier bootstrap \
#     -r jitpack \
#     -i user -I user:sh.almond:scala-kernel-api_$SCALA_VERSION:$ALMOND_VERSION \
#     sh.almond:scala-kernel_$SCALA_VERSION:$ALMOND_VERSION \
#     -o almond
# ./almond --install
# rm -f almond

# REQUIREMENTS ========================================================
touch requirements.txt
pip install -r requirements.txt
echo "===virtual environment .${venv_name} created==="

# GIT =================================================================
# 8. If doesn't exist, add virtual environment path to .gitignore.
grep -qxF ".${venv_name}/" .gitignore || echo ".${venv_name}/" >> .gitignore
echo "===updated .gitignore with ".${venv_name}/"==="

# 9. Add and commit .gitignore to git.
# NB Will report 'no changes added to commit' if .gitignore stayed the same.
git add .gitignore
git commit -m "Update .gitignore with '.${venv_name}/'"
echo "===added & committed .gitignore to git==="
