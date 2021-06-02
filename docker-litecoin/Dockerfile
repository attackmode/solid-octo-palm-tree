#I wouldnt normally use latest. If this was in a prod env I would expect to use a hardend image with specific tag 
FROM ubuntu:latest
ARG  version=0.18.1
ARG  arch=x86_64
ENV DEBIAN_FRONTEND=noninteractive
RUN  \
     apt-get update -y --no-install-recommends \
     && apt-get install -y wget \
     && wget -O /tmp/litecoin.tar.gz https://download.litecoin.org/litecoin-${version}/linux/litecoin-${version}-${arch}-linux-gnu.tar.gz \
     && wget -O /tmp/linux-signatures.asc https://download.litecoin.org/litecoin-${version}/linux/litecoin-${version}-linux-signatures.asc \
     ## learned something new https://superuser.com/questions/1312740/how-to-take-sha256sum-of-file-and-compare-to-check-in-one-line
     && echo $(cat /tmp/linux-signatures.asc | grep "litecoin-${version}-${arch}-linux-gnu.tar.gz" | awk '{ print $1 }') /tmp/litecoin.tar.gz | sha256sum --check || { echo 'checksum failed' ; exit 1; } \
     ## would untar /tmp/litecoin.tar.gz to a dir in /opt to build project
     && rm -rf /var/lib/{​​​​apt,dpkg,cache,log}​​​​/
## a rudimentary while loop to daemonise  
COPY entrypoint.sh /usr/local/bin/entrypoint.sh 
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
