FROM alpine:3.7
RUN  apk add --update bash git                                && \
     cd /tmp                                                  && \
     git clone https://github.com/sstephenson/bats.git        && \
     cd bats                                                  && \
     ./install.sh /usr/local
     
