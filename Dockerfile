FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# set timezone JST
RUN /bin/cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# install tools
RUN sudo apt-get update
RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential libgmp3-dev golang git

# install geth
RUN git clone -b release/1.3.6 https://github.com/ethereum/go-ethereum.git
RUN make -C go-ethereum geth
RUN sudo cp go-ethereum/build/bin/geth /usr/bin/
RUN mkdir eth_data

RUN mkdir /eth_private_net
ADD myGenesis.json /eth_private_net/myGenesis.json

