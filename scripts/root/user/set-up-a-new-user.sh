#!/bin/sh

# Print info
echo '\n\e[1;36mSetting up a user:\e[0m'

echo '\e[1;36m> Adding a new user...\e[0m'
useradd -u 1000 -ms /bin/bash $USER

echo '\e[1;36m> Disabling password prompt...\e[0m'
echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER

echo '\e[1;36m> Setting read only mode for /etc/sudoers.d/$USER...\e[0m'
chmod 0440 /etc/sudoers.d/$USER

echo '\e[1;36m> Letting the user to own home directory...\e[0m\n'
chown -R $USER:$USER $HOME
