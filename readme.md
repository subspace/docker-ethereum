Simple Docker image with Ethereum full node running

### Building Docker image
In order to get source code and build an image run:
```bash
git clone git@github.com:subspace/docker-ethereum.git
cd docker-ethereum
docker build -t subspacelabs/ethereum .
```

If you want to push new image to Subspace's Docker Hub organization afterwards:
```bash
docker push subspacelabs/ethereum
```

### Building Docker image for Raspberry PI (32-bit ARMv7)
In order to get source code and build an image run:
```bash
git clone git@github.com:subspace/docker-ethereum.git
cd docker-ethereum
docker build -t subspacelabs/ethereum:arm32v7 -f Dockerfile-arm32v7 .
```

If you want to push new image to Subspace's Docker Hub organization afterwards:
```bash
docker push subspacelabs/ethereum:arm32v7
```
