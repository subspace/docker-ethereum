#!/bin/run /bin/bash
set -e

GETH_BUILD=geth-linux-$GETH_ARCH-$GETH_RELEASE
GETH_BUILD_FILE=geth-linux-$GETH_ARCH-$GETH_RELEASE.tar.gz
GETH_URL=https://gethstore.blob.core.windows.net/builds/$GETH_BUILD_FILE

apt-get update
apt-get install -y --no-install-recommends curl ca-certificates gosu
apt-get clean
rm -rf /var/lib/apt/lists/*

useradd -r ethereum

cd /tmp
curl -O $GETH_URL
echo "$GETH_MD5 $GETH_BUILD_FILE" | md5sum -c
tar --extract --gzip --file $GETH_BUILD_FILE
mv $GETH_BUILD/geth /usr/local/bin/
rm -rf $GETH_BUILD_FILE $GETH_BUILD
