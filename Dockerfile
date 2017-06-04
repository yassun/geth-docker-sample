FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# set timezone JST
RUN /bin/cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# install tools
RUN sudo apt-get update && apt-get install alien -y
RUN sudo apt-get install -y --reinstall ca-certificates
RUN sudo apt-get install -y software-properties-common python-software-properties
RUN sudo add-apt-repository ppa:evarlast/golang1.4
RUN sudo apt-get install -y build-essential libgmp3-dev golang git

# install geth
RUN git clone -b release/1.3.6 https://github.com/ethereum/go-ethereum.git
RUN make -C go-ethereum geth
RUN ./go-ethereum/build/bin/geth version
RUN sudo cp go-ethereum/build/bin/geth /usr/bin/
RUN mkdir eth_data

