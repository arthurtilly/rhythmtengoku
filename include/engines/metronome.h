#pragma once

#include "global.h"
#include "engines.h"

#include "games/metronome/graphics/metronome_graphics.h"

// Engine Types:
struct MetronomeEngineData {
    u8 pad2[0xa];
    u16 unk_a;
    u8 unk_c;
    u8 pad5[0x3];
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16[3];
    u8 pad[0x6];
    s16 unk_22;
    s16 unk_24;
    s16 unk_26;
    u16 score; // 28
    u8 unk_2a;
    u8 unk_2b;
    u16 unk_2c;
    u8 pad4[0x2];
};

struct MetronomeCue {
    /* add fields here */
};

struct MetronomeUnknownMovementData {
    s16 initX;
    s16 initY;
    s16 targetX;
    s16 targetY;
};


// Engine Data:
extern const char D_0805a694[];
extern const char D_0805a6c0[];
extern const char D_0805a6c8[];


// Engine Definition Data:
extern struct CompressedData *metronome_buffered_textures[];
extern struct GraphicsTable metronome_gfx_table[];
extern struct MetronomeUnknownMovementData D_089e5890[];
extern struct MetronomeUnknownMovementData D_089e58a0[];


// Functions:
extern void metronome_init_gfx3(void); // Graphics Init. 3
extern void metronome_init_gfx2(void); // Graphics Init. 2
extern void metronome_init_gfx1(void); // Graphics Init. 1
extern void metronome_engine_start(u32 version); // Game Engine Start
extern void func_08035780(); // Engine Event 00 (?)
extern void func_080357c4(); // Engine Event 01 (?)
extern void func_080358b0(); // Engine Event 02 (?)
extern void func_080358d8(); // Engine Event 03 (?)
extern void func_080358f8(); // Engine Event 04 (STUB)
// extern ? func_080358fc(?);
// extern ? func_080359e8(?);
extern void metronome_engine_update(void); // Game Engine Update
extern void metronome_engine_stop(void); // Game Engine Stop
extern void metronome_cue_spawn(struct Cue *, struct MetronomeCue *); // Cue - Spawn
extern u32  metronome_cue_update(struct Cue *, struct MetronomeCue *, u32 runningTime, u32 duration); // Cue - Update
extern void metronome_cue_despawn(struct Cue *, struct MetronomeCue *); // Cue - Despawn
extern void metronome_cue_hit(struct Cue *, struct MetronomeCue *, u32 pressed, u32 released); // Cue - Hit
extern void metronome_cue_barely(struct Cue *, struct MetronomeCue *, u32 pressed, u32 released); // Cue - Barely
extern void metronome_cue_miss(struct Cue *, struct MetronomeCue *); // Cue - Miss
extern void metronome_input_event(u32 pressed, u32 released); // Input Event
extern void metronome_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void metronome_common_display_text(s32 text); // Common Event 1 (Display Text)
extern void metronome_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
