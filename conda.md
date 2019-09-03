# Conda

### Conda virtual environment list
```conda env list```
### Modules in current virtual environment
```conda list```
### Update conda
```conda update conda```
### Update all modules
```conda update --all```
### Search module in repositories
```anaconda search -t xgboost```
### Create new environment with certain python version
```conda create -n envname python=3.7```
### Conda version
```conda info```


## Jupyter
### List of servers
```jupyter notebook list```
### Generate config for Notebook/Lab
```jupyter notebook --generate-config```
### Set password
```jupyter notebook password```
### Run Lab on certain port, meta IP, without browser, from root (container frinedly)
```jupyter lab --ip=0.0.0.0 --port=portnum --no-browser --allow-root```
