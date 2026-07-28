#!/bin/bash

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump -D -bbinary -marmv4t"

if [ -z $NOTHUMB ]; then
    OBJDUMP="$OBJDUMP -Mforce-thumb"
fi

if [ $(($1)) -ge $((0x8000000)) ]; then
    OPTIONS="--adjust-vma=0x8000000 --start-address=$(($1)) --stop-address=$(($1 + $2))"
else
    OPTIONS="--start-address=$(($1)) --stop-address=$(($1 + $2))"
fi
$OBJDUMP $OPTIONS baserom.gba > baserom.dump
$OBJDUMP $OPTIONS build/rhythmtengoku.gba > build/rhythmtengoku.dump
diff -u baserom.dump build/rhythmtengoku.dump
