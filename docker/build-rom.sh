#!/bin/bash
BASEROMPATH="${BASEROMPATH:-baserom.gba}"

if [ -n "$RHREPO" ]; then
	RHREPO="--build-arg rhrepo=$RHREPO"
fi

if [ -n "$DEVFOLDER" ]; then
	DEVFOLDER="-v $(realpath $DEVFOLDER):/home/tengoku/rt"
fi

docker rm -f tengokuc

set -e
docker build -t tengokui $RHREPO .
docker run -u "$(id -u):$(id -g)" $DEVFOLDER -v "$(realpath $BASEROMPATH):/home/tengoku/rt/baserom.gba:ro,Z" --name tengokuc tengokui make -j
docker cp tengokuc:/home/tengoku/rt/build/rhythmtengoku.gba .
docker rm tengokuc
