#!/usr/bin/env bash

OUT_FILE=ctx.c

GCC=gcc
FLAGS="-E -P -dD -CC"
INCLUDES="-I tools/agbcc -I tools/agbcc/include -I . -I src -iquote include -nostdinc -undef"


generate-ctx () {
    # Remove predefined macros + asm("")
    grep "^#include " "$1" | $GCC $FLAGS $INCLUDES  -x c - | sed '/define __STDC__\|define __STDC_VERSION__\|define __STDC_VERSION__\|define __STDC_HOSTED__\|define __STDC_UTF_16__\|define __STDC_UTF_32__\|asm("/d' > $OUT_FILE
}

usage () {
    echo "Generate a context file for decomp.me."
    echo "Usage: $0 [-h] [FILEPATH]"
    echo ""
    echo "Arguments:"
    echo "  FILEPATH      Source file used to generate ctx.c"
    echo ""
    echo "Options:"
    echo "  -h            Show this message and exit"
}

while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
  -h)
    usage
    exit 0
    ;;
  *)
    generate-ctx "$1"
    exit 0
    ;;
  esac
done
