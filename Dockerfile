FROM ubuntu:16.04

WORKDIR /ipfs
COPY ipfs.tar ipfs.tar
RUN mkdir bin
RUN tar -xvf ipfs.tar
RUN mv go-ipfs/ipfs /usr/local/bin
RUN rm -r go-ipfs
RUN rm ipfs.tar

EXPOSE 4001
EXPOSE 4002/udp
EXPOSE 5001
EXPOSE 8080

COPY start /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

ENTRYPOINT start