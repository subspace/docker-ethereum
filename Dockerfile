FROM subspacelabs/ubuntu

ENV \
    GETH_RELEASE=1.8.22-7fa3509e \
    GETH_ARCH=amd64 \
    GETH_MD5=a02321a1ee89c330eb8e87b694254dbb

COPY docker/build.sh /build.sh
COPY docker/entrypoint.sh /entrypoint.sh

RUN ["/build.sh"]

EXPOSE 8545 8546

ENTRYPOINT ["/entrypoint.sh"]
