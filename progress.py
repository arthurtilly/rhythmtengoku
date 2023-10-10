decomppath = "."
from pathlib import Path

def get_address_from_map_line(line):
    return int(line[18:34],16)

def get_name_from_map_line(line):
    return line[49:].strip()

def is_start_of_text(line):
    if line[:11] == " build/src/":
        #print(line)
        if "(.text)" in line:
            return True
    return False

mapfile = open(decomppath+"/build/rhythmtengoku.map","r")
maplines = mapfile.readlines()
mapfile.close()

allFunctions = {}

inTextSection = False

for (i, line) in enumerate(maplines):
    if inTextSection:
        if line[:6] == " .text":
            continue
        if line[:16].strip() == "":
            startAddress = get_address_from_map_line(line)
            funcName = get_name_from_map_line(line)
            j = i
            while True:
                j += 1
                if maplines[j][:16].strip() == "":
                    endAddress = get_address_from_map_line(maplines[j])
                    break
            allFunctions[funcName] = (startAddress, endAddress)
            continue
        inTextSection = False

    if is_start_of_text(line):
        #print(line)
        inTextSection = True
        continue

allAsmFiles = [p.name.split("/")[-1] for p in Path(decomppath+"/asm").rglob("asm_*.s")]

decompiledBytes = 0
decompiledFuncs = 0
totalBytes = 0
totalFuncs = 0
#print(allAsmFiles)
for (name, addresses) in allFunctions.items():
    length = addresses[1] - addresses[0]
    if ("asm_%08x.s" % addresses[0]) in allAsmFiles:
        pass
    else:
        #print("DECOMPILED: %s: %d" % (name, length))
        decompiledBytes += length
        decompiledFuncs += 1
    totalBytes += length
    totalFuncs += 1        


bytePercentage = 100*decompiledBytes / totalBytes
funcPercentage = 100*decompiledFuncs / totalFuncs
print("%d / %d bytes decompiled (%.8f%%)" % (decompiledBytes, totalBytes, bytePercentage))
print("%d / %d functions decompiled (%.8f%%)" % (decompiledFuncs, totalFuncs, funcPercentage))

#print(allFunctions)
#print(get_name_from_map_line("               0x00000000080001f4                func_080001f4_stub"))