# Build with docker

## Installing dependencies
You only need to isntall docker. It is available on most major distros. You can also follow [the official docker install guide](https://docs.docker.com/engine/install).
On windows / macos you can use docker desktop.  
You could also install docker in wsl.

Make sure you are in the docker group to be able to build the game without root:
```bash
sudo usermod -aG docker youruser 
newgrp docker # optional, you could also log out and log in again
```

## Building
Make sure you are in this file's folder.  
Add your legally obtained rhythm heaven copy in this folder and rename it to `baserom.gba`  
Run `build.sh`. It might take a bit. You'll have `rhythmtengoku.gba` in the current folder.

## Options and dev tips
if the baserom is not in the docker folder, you can specify it with the `BASEROMPATH` environment variable, like so:
```
BASEROMPATH=path/to/rom/baserom.gba ./build-rom.sh
```

Same can be done to choose which git repo is cloned in the container with `RHREPO`.

For development purposes, you might want to edit this project's files before building. The recommended solution is to extract the files from the docker (since some setup has been done, the on host machine cloned repo won't do) and mount them back.
```
docker run -d --name tengoku-copy-rt tengokui
docker cp tengoku-copy-rt:/home/tengoku/rt /dev/folder/path
docker rm -f tengoku-copy-rt
```

then set `DEVFOLDER` to the path of the repo on your local machine. It will override the cloned repo in docker and any changes made on your host
machine will reflect inside the docker container. Furthermore, with this setup, the `build` folder is persistant, you'll have faster builds on subsequent runs.  
It is also the recommended way to change the Makefile and set the `NONMATCHING` parameter, for instance.
