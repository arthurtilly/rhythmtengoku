FROM devkitpro/devkitarm:latest

RUN apt update -y
RUN apt install -y build-essential binutils-arm-none-eabi git libpng-dev ffmpeg

RUN useradd -ms /bin/bash tengoku
USER tengoku

ARG rhrepo=https://github.com/arthurtilly/rhythmtengoku.git

RUN git clone $rhrepo /home/tengoku/rt
RUN git clone https://github.com/pret/agbcc /home/tengoku/agbcc

WORKDIR /home/tengoku/agbcc
RUN ./build.sh
RUN ./install.sh /home/tengoku/rt

WORKDIR /home/tengoku/rt
