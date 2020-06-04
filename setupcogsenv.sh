pip3 install pipenv==2018.11.26
cd /Users/adamsm/go/src/github.com/GSS-Cogs/databaker-docker
git stash
git reset && git checkout master && git pull
pipenv update --dev --outdated
pipenv install jupyter
pipenv install jupyterlab
pipenv install openpyxl
pipenv shell
cd ~
