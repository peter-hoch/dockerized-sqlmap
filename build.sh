#!/bin/bash

docker build -t petersdockerid0815/sqlmap:1.8.12 .
docker build -t petersdockerid0815/sqlmap:latest .

docker run --rm --net=host --name sqlmap -it -v `pwd`:/app petersdockerid0815/sqlmap:1.8.12 /bin/bash

