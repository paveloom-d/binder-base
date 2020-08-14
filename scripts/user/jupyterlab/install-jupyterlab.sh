#!/bin/sh

# Print info
echo '\n\e[1;36mInstalling JupyterLab:\e[0m'

echo '\e[1;36m> Installing jupyter...\e[0m'
pip3 install --no-cache-dir jupyter >/dev/null

echo '\e[1;36m> Installing jupyterlab...\e[0m'
pip3 install --no-cache-dir jupyterlab >/dev/null

echo '\e[1;36m> Activating the extension...\e[0m\n'
jupyter serverextension enable --py jupyterlab --user 2>/dev/null