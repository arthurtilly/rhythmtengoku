if which xxd 2>&1 > /dev/null; then
    xxd -o 0x08000000 baserom.gba > build/baserom.hex
    xxd -o 0x08000000 build/rhythmtengoku.gba > build/rhythmtengoku.hex
    diff --color build/baserom.hex build/rhythmtengoku.hex
else
    echo "error: xxd is not installed!" >&2
fi