#!/usr/bin/zsh

# [DIRS] Create initial directories.
mkdir -p ~/repos

# [SSH] Add Github to known hosts.
mkdir -p ~/.ssh \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts

# [APT] Install General Tools.
apt-get update && apt-get install -y \
    build-essential \
    gcc \
    make \
    python3-setuptools \
    software-properties-common \
    tar \
    tmux \
    unzip

    # age \
    # apt-transport-https \
    # coreutils \
    # gnupg \
    # gpg \
    # net-tools \

# [Docker Config] Add Docker Group.
groupadd docker \
    && usermod -aG docker $USER

# [PYTHON] Install Python
curl -Lo miniforge.sh https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh \
  && chmod +x ./miniforge.sh \
  && ./miniforge.sh -b -p ~/miniconda \
  && ~/miniconda/bin/conda config --set always_yes yes --set changeps1 no \
  && ~/miniconda/bin/conda update -q -y conda \
  && rm miniforge.sh

# SOURCE FOR PYTHON
. ~/.zshrc
