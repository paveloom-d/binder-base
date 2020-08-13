#!/bin/sh

# Print info
echo '\n\e[1;36mInstalling JupyterLab:\e[0m'

# Install jupyter
echo '\e[1;36m> Installing jupyter...\e[0m'
pip3 install --no-cache-dir jupyter >/dev/null

# Install jupyterlab
echo '\e[1;36m> Installing jupyterlab...\e[0m\n'
pip3 install --no-cache-dir jupyterlab >/dev/null