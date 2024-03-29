#!/bin/sh

echo '\n\e[1;36mInstalling essential packages:\e[0m'

echo '\e[1;36m> Updating lists of packages...\e[0m'
apt-get update >/dev/null

echo '\e[1;36m> Installing `apt-utils`...\e[0m'
apt-get -y install apt-utils >/dev/null 2>&1

echo '\e[1;36m> Installing `apt-transport-https`...\e[0m'
apt-get install -y --no-install-recommends apt-transport-https >/dev/null

echo '\e[1;36m> Installing `ca-certificates`...\e[0m'
apt-get install -y --no-install-recommends ca-certificates >/dev/null

echo '\e[1;36m> Installing `dialog`...\e[0m'
apt-get install -y --no-install-recommends dialog >/dev/null

echo '\e[1;36m> Installing `htop`...\e[0m'
apt-get install -y --no-install-recommends htop >/dev/null

echo '\e[1;36m> Installing `git`...\e[0m'
apt-get install -y --no-install-recommends git >/dev/null

echo '\e[1;36m> Installing `wget`...\e[0m'
apt-get install -y --no-install-recommends wget >/dev/null

echo '\e[1;36m> Installing `curl`...\e[0m'
apt-get install -y --no-install-recommends curl >/dev/null

echo '\e[1;36m> Installing `zip`...\e[0m'
apt-get install -y --no-install-recommends zip >/dev/null

echo '\e[1;36m> Installing `unzip`...\e[0m'
apt-get install -y --no-install-recommends unzip >/dev/null

echo '\e[1;36m> Installing `sudo`...\e[0m'
apt-get install -y --no-install-recommends sudo >/dev/null

echo '\e[1;36m> Installing `ssh`...\e[0m'
apt-get install -y --no-install-recommends ssh >/dev/null

echo '\e[1;36m> Installing `software-properties-common`...\e[0m'
apt-get install -y --no-install-recommends software-properties-common >/dev/null

echo '\e[1;36m> Cleaning the `apt` cache...\e[0m\n'
rm -rf /var/lib/apt/lists/*