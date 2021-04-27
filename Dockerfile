FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

# https://github.com/sharkdp/bat/issues/938#issuecomment-646745610 for --force-overwrite
RUN apt-get update && apt-get install -y --no-install-recommends -o Dpkg::Options::="--force-overwrite" bat ripgrep && \
  apt-get install -y --no-install-recommends fd-find git tmux tree vim && \
  apt-get install -y curl

WORKDIR /root
COPY vimrc .vim/vimrc
COPY init.sh /root/init.sh
RUN /root/init.sh
