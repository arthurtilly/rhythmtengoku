#pragma once

// A Singular BeatScript Instruction
struct BeatScript {
    u32 command:8;
    u32 param1:24;
    u32 param2;
    u32 param3;
};

// BeatScript Thread (Size = 0x9C)
struct BeatScriptThread {
    u8 active:1;  // Execution flag (?)
    u8 stackCounter:4;  // Stack Counter
    void *scene; // Scene Definition Struct (note: not the Script one that's currently called "Scene")
    const struct BeatScript *current;  // Current Position
    u32 timeUntilNext; // Time until next instruction (in Q24.8 Beats)
    const struct BeatScript *jumpStack[8];  // Stack
    u8 unk30[0x20];
    const struct BeatScript *loopStart; // Loop Start
    u16 unk54;
    s16 sprites[0x20];
    u16 unk96;
    u32 unk98;
};

struct SoundPlayer;

// BeatScript Handler
// Null = "Data Not Known to be Used YET"

struct BeatScriptHandler {
    u32 unk0_b0:4;
    u32 bypassLoops:1;
    u32 unk0_b5:1;
    u32 unk0_b6:1;
    u32 unk0_b7:1;
    u32 unk1_b0:1;
    u32 unk1_b1:3;
    u32 unk1_b4:3;
    u32 unk1_b7:1;
    u32 unk2_b0:1;
    struct SoundPlayer *musicPlayer; // [D_030053c4] Music Player
    u16 musicBaseBPM;
    u16 scriptBaseBPM;
    u16 scriptBPM; // [D_030053cc] Tempo after speed multiplication.
    u16 scriptSpeed; // [Q8.8] Speed Multiplier
    u16 unk10; // [Q8.8] (currentTempo / 140)
    u32 unk14; // [D_030053d4] ?? ([Q8.8] (currentTempo / 150))
    u32 null18;
    u8  unk1C;
    s16 musicPitchSrc1;
    s16 musicPitchSrc2;
    s16 musicPitch;
    u32 unk24;
    struct BeatScriptThread threads[2];
    u32 unk160[12];
    u16 musicVolume; // [D_03005550] BeatScript: Music Volume
    u16 musicTrkVolume; // [D_03005552] BeatScript: Music Channel Selection Volume
    u16 musicTrkTargets; // [D_03005554] BeatScript: Music Channel Selection
    u16 musicPitchEnv; // [D_03005556] BeatScript: Music Pitch
    u32 null198;
    u32 null19C;
    u32 null1A0;
    u32 null1A4;
    u32 null1A8;
    u32 null1AC;
    u32 null1B0;
    u32 null1B4;
    u32 null1B8;
    u32 null1BC;
    void (*unk1C0)(u32);
    u32 unk1C4;
};



extern struct BeatScriptHandler D_030053c0;
extern const s16 gSineTable[];
extern const s16 D_08935fcc[];
extern const s16 D_089361cc[];
