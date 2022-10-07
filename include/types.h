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
    u32 *unk4;
    const struct BeatScript *current;  // Current thread (start?)
    u32 unkC;
    const struct BeatScript *jumpStack[8];  // Stack
    u8 unk30[0x20];
    const struct BeatScript *unk50; // Position in a previous script..? (it's always the title screen for some reason)
    u16 unk54;
    u16 unk56;
    u8  unk58[0x40];
    u32 unk98;
};

struct SoundPlayer;

// BeatScript Handler
// Null = "Data Not Known to be Used YET"

struct BeatScriptHandler {
    u32 unk0_b0:4;
    u32 unk0_b4:1;
    u32 unk0_b5:1;
    u32 unk0_b6:1;
    u32 unk0_b7:1;
    u32 unk1_b0:1;
    u32 unk1_b1:3;
    u32 unk1_b4:5;
    u32 unk2_b1:1;
    struct SoundPlayer *musicPlayer; // [D_030053c4] Music Player
    u16 unk8;
    u16 unkA;
    u16 unkC;      // [D_030053cc] ??
    u16 unkE;
    u32 null10;
    u32 unk14;     // [D_030053d4] ??
    u32 null18;
    u8  null1C;
    u16 unk20;
    u16 unk22;
    u32 unk24;
    struct BeatScriptThread threads[2];
    u32 unk160[12];
    u16 musicGain; // [D_03005550] BeatScript: Music Volume
    u16 musicTrkGain; // [D_03005552] BeatScript: Music Channel Selection Volume
    u16 musicTrkGainTargets; // [D_03005554] BeatScript: Music Channel Selection
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
extern s16 gSineTable[];
extern s16 D_08935fcc[];
extern s16 D_089361cc[];
