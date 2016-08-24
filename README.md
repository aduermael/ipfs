# ipfs in Docker

### Build

```shell
docker build -t ipfs .
```

### Run

```shell
docker run -ti --rm -p 4001:4001 -p 5001:5001 -p 8080:8080  ipfs
```

Run a second container and join ipfs swarm:

```shell
ipfs swarm connect /ip4/<container ip>/tcp/4001/ipfs/<peer id>
```





 