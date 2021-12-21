FROM registry.fedoraproject.org/fedora:35

WORKDIR /root/
RUN dnf update -y

RUN dnf install -y \
    '@Development tools' \
    fd-find \
    gcc-c++ \
    git \
    htop \
    libstdc++-devel \
    ncdu \
    npm \
    nodejs \
    python3 \
    python3-devel \
    python3-jedi \
    python3-pip \
    ripgrep \
    rust \
    wget \
    && true

# Uncomment this if prefer to use nightly builds
# RUN dnf install -y 'dnf-command(copr)' \
#     && dnf copr -y enable agriffis/neovim-nightly \
#     && dnf install -y neovim python3-neovim

RUN dnf install -y neovim python3-neovim
# NOTE: As of 2021-12-18 neovim 0.6.0 is only available in the updates-testing repo
RUN dnf --enablerepo=updates-testing update -y neovim

RUN git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim
RUN pip install black flake8 isort mypy
