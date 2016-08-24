FROM ubuntu:16.04

WORKDIR /ipfs
COPY ipfs.tar ipfs.tar
RUN mkdir bin
RUN tar -xvf ipfs.tar
RUN mv go-ipfs/ipfs /usr/local/bin
RUN rm -r go-ipfs
RUN rm ipfs.tar

CMD /bin/bash