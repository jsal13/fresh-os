#!/usr/bin/zsh

# [DIRS] Create initial directories.
mkdir -p ~/repos

# [SSH] Add Github to known hosts.
mkdir -p ~/.ssh \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts

# [APT] Install General Tools.
apt-get update && apt-get install -y \
    age \
    apt-transport-https \
    build-essential \
    coreutils \
    gcc \
    gnupg \
    gpg \
    make \
    net-tools \
    python3-setuptools \
    software-properties-common \
    tar \
    tmux \
    unzip \
    wireless-tools

# [FFMPEG APT] For FFMPEG...
apt-get -y install \
  autoconf automake cmake git-core libass-dev \
  libfreetype6-dev libgnutls28-dev libmp3lame-dev libsdl2-dev libtool \
  libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev \
  libxcb-xfixes0-dev meson ninja-build pkg-config texinfo wget yasm \
  zlib1g-dev

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

# [PYTHON] Install Python Packages
pip install uv
uv pip install -r requirements.txt

# [ASDF] Install
## (Current as of 2024-10-14)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1

# SOURCE FOR ASDF
. ~/.zshrc

# [ASDF] Install List.
# IMPORTANT: If you don't use my dotfiles, please follow
# the instructions here (https://asdf-vm.com/guide/getting-started.html)
# to add the asdf OMZ plugin or add asdf to PATH.
list=( \
    "awscli" \
    "golang" \
    "nodejs" \
    "terraformer" \
    "terraform" \
    "sops" \
    "k9s" \
    "jq" \
    "hadolint" \
    "ffmpeg" \
    "k3d" \
)

for application in ${list[@]}; do
    asdf plugin add $application
    asdf install $application latest
    asdf global $application latest
done
