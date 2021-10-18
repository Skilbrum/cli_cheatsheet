#Python image with ML developer tools
FROM debian
#
#Linux utils
RUN apt update &&\
  apt install -y python3 \
  python3-pip \
  nodejs\
  npm\
  tmux &&\
#  
#Python packages
  pip install --upgrade pip &&\
  pip install jupyterlab\
  pip install jupyter_nbextensions_configurator\
  sklearn\
  pandas\
  xlrd \
  openpyxl \
  matplotlib \
  requests &&\
#
#Jupyterlab extensions
  jupyter labextension install @aquirdturtle/collapsible_headings &&\
  jupyter labextension install @jupyterlab/toc