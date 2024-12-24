FROM ubuntu:24.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive TZ=Europe/Berlin apt-get -y install tzdata && \
    apt-get install -y iputils-ping net-tools iproute2 vim && \
    apt-get install -y git python3 

WORKDIR /opt/sqlmap

RUN ln -L /bin/python3 /bin/python && \
    git clone https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap && \
    git checkout 1.8.12 && \
    ln -L /opt/sqlmap/sqlmap.py /opt/sqlmap/sqlmap && \
    echo "PATH=$PATH:/opt/sqlmap" >>  /root/.bashrc 


    WORKDIR /app
