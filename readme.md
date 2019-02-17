Simple Docker image with Ethereum full node running

Just pull one of the images from Docker Hub:
```
subspacelabs/ethereum
subspacelabs/ethereum:arm32v7
subspacelabs/ethereum:arm64v8
```

### Building Docker image
In order to get source code and build an image run:
```bash
git clone git@github.com:subspace/docker-ethereum.git
cd docker-ethereum
docker build -t subspacelabs/ethereum .
```

### Building Docker image for Raspberry PI (32-bit ARMv7)
In order to get source code and build an image run:
```bash
git clone git@github.com:subspace/docker-ethereum.git
cd docker-ethereum
docker build -t subspacelabs/ethereum:arm32v7 -f Dockerfile-arm32v7 .
```

### Building Docker image for 64-bit ARMv8
In order to get source code and build an image run:
```bash
git clone git@github.com:subspace/docker-ethereum.git
cd docker-ethereum
docker build -t subspacelabs/ethereum:arm64v8 -f Dockerfile-arm64v8 .
```
