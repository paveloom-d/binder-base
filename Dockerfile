# Base image
FROM ubuntu:20.04

# Meta information
LABEL maintainer="Pavel Sobolev (https://github.com/Paveloom)"
LABEL version="0.1.0"
LABEL description="This image contains a base for Binder."
LABEL github-repository="https://github.com/paveloom-d/binder-base"
LABEL docker-repository="https://hub.docker.com/r/paveloom/binder-base"

# Copy scripts to the root
COPY scripts /scripts

# Allow their execution
RUN chmod -R +x /scripts

# Temporarily disable prompts during the build
ARG DEBIAN_FRONTEND=noninteractive

# Install essential packages
RUN /scripts/root/essential-packages/install-essential-packages.sh

# Specify a new user
ENV USER=jovyan

# Set HOME for this user
ENV HOME /home/$USER

# Set up a new user
RUN /scripts/root/user/set-up-a-new-user.sh

# Install Python
RUN /scripts/root/python/install-python.sh

# Switch to the created user
USER $USER

# Switch to the home directory of this user
WORKDIR $HOME

# Add ~/.local/bin to the PATH
ENV PATH=$PATH:$HOME/.local/bin

# Install JupyterLab
RUN /scripts/user/jupyterlab/install-jupyterlab.sh

# Remove scripts
RUN sudo rm -rf /scripts

# Set DEBIAN_FRONTEND to teletype
ENV DEBIAN_FRONTEND=teletype