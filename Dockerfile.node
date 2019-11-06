FROM prodenv/ubuntu-base
LABEL maintainer="starkwang wsd312@163.com"
LABEL name="node-env"
LABEL version="latest"

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs

RUN npm install -g yarn
RUN yarn global add pm2

# Set china mirror
# RUN echo "alias yarn='yarn --registry=https://registry.npm.taobao.org'" >> /etc/bash.bashrc

# Print node versions
RUN node -v
RUN npm -v

RUN yarn config list

# Set WORKDIR to nvm directory
WORKDIR /home

ENTRYPOINT ["/bin/bash"]
