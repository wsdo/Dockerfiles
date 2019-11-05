FROM ubuntu:16.04
LABEL maintainer="starkwang wsd312@163.com"
LABEL name="node-env"
LABEL version="latest"


SHELL ["/bin/bash", "-o", "pipefail", "-c"]


ENV NODE_VERSION=12.13.0
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
RUN apt-get install  -y           \
    curl                          \
    htop                          \
    git                           \
    zip                           \
    nano                          \
    ncdu                          \
    build-essential               \
    chrpath                       \
    libssl-dev                    \
    libxft-dev                    \
    pkg-config                    \
    glib2.0-dev                   \
    libexpat1-dev                 \
    gobject-introspection         \
    python-gi-dev                 \
    apt-transport-https           \
    libgirepository1.0-dev        \
    libtiff5-dev                  \
    libjpeg-turbo8-dev            \
    libgsf-1-dev                  \
    locales                       \
    fail2ban

RUN locale-gen en_US.UTF-8

# Set locale
# RUN locale-gen en_US.UTF-8

# Print tool versions
# RUN bash --version | head -n 1
# RUN zsh --version
# RUN git --version
# RUN curl --version
# RUN wget --version

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs

RUN npm install -g yarn
RUN npm install -g pm2

# Print node versions
RUN node -v
RUN npm -v


# Set WORKDIR to nvm directory

WORKDIR /home

ENTRYPOINT ["/bin/bash"]
