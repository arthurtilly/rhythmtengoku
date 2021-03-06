#!/usr/bin/env python3
import sys, json, os, wave

jsonFile = sys.argv[1]
outputFile = sys.argv[2]

pitches = ("C","C#","D","D#","E","F","F#","G","G#","A","A#","B")

def get_json_data():
    global jsonFile
    with open(jsonFile, 'r') as f:
        return json.load(f)
    
def write_sfx_entry(fileLines, sfxEntry):
    global jsonFile
    wavPath = os.path.join(os.path.join(os.path.dirname(jsonFile),"samples"),sfxEntry["sample"])
    wavFile = wave.open(wavPath)
    
    pitch = sfxEntry["pitch"]
    
    length = (2 if "#" in pitch else 1)
    pitchOctave = int(pitch[length:])
    pitchNum = pitches.index(pitch[:length]) + pitchOctave*12
    
    if "loop" in sfxEntry.keys():
        loopStart = sfxEntry["loop"][0]
        loopEnd = sfxEntry["loop"][1]
    else:
        loopStart = 0
        loopEnd = 0
    
    fileLines.append("extern const u32 %s_pcm;\n" % (sfxEntry["sample"].split(".")[0]))
    fileLines.append("const struct SampleInfo %sSampleInfo = {\n" % (sfxEntry["sample"].split(".")[0]))
    fileLines.append("    /* Length */      %d,\n" % (wavFile.getnframes()-1))
    fileLines.append("    /* Sample Rate */ %d,\n" % (wavFile.getframerate()))
    fileLines.append("    /* Pitch */       %d,\n" % pitchNum)
    fileLines.append("    /* Loop Start */  %d,\n" % loopStart)
    fileLines.append("    /* Loop End */    %d,\n" % loopEnd)
    fileLines.append("    /* ROM Address */ &%s_pcm\n" % (sfxEntry["sample"].split(".")[0]))
    fileLines.append("};\n")
    fileLines.append("\n")
    
def write_sfx_file(sfxList):
    global outputFile
    fileLines = []
    fileLines.append("// DO NOT EDIT. THIS FILE IS AUTO-GENERATED BY tools/sfx_parser.py. EDIT audio/sfx_table.json INSTEAD.\n")
    fileLines.append("#include \"global.h\"\n")
    fileLines.append("#include \"sound.h\"\n")
    fileLines.append("\n")
    
    for sfxEntry in sfxList:
        write_sfx_entry(fileLines, sfxEntry)
        
    with open(outputFile, 'w') as f:
        return f.writelines(fileLines)

def main():
    jsonData = get_json_data()
    sfxList = jsonData["sfx"]
    write_sfx_file(sfxList)


main()