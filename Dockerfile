FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common
RUN apt-add-repository ppa:fish-shell/release-3

# Do after installing all the packages
RUN yes | unminimize

# could make one line, but this lets us just add new things to the end w/o rebuilding everything else
RUN apt-get install -y kcat
RUN apt-get install -y iputils-ping
RUN apt-get install -y nmap 
RUN apt-get install -y jq
RUN apt-get install -y curl
RUN apt-get install -y cowsay
# pstree
RUN apt-get install -y psmisc
RUN apt-get install -y socat
RUN apt-get install -y tree
RUN apt-get install -y mtr
RUN apt-get install -y ncdu
RUN apt-get install -y fish

WORKDIR /root
CMD ["/usr/bin/fish"]
# TODO:
# - fd
