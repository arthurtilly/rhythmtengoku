#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

#include "games/drum_intro/graphics/drum_intro_graphics.h"

// Engine Macros/Enums:
enum DrumIntroVersionsEnum {
    ENGINE_VER_DRUM_INTRO_TEACHER,
    ENGINE_VER_DRUM_INTRO_PLAYER,
    ENGINE_VER_DRUM_INTRO_TANUKI_MONKEY,
    ENGINE_VER_DRUM_INTRO_CUTSCENE
};


// Engine Types:
struct DrumIntroEngineData {
    u8 pad[0x3b4];
};

struct DrumIntroCue {
    /* add fields here */
};

typedef void (*DrumKitCueFunc)();

struct DrumKitCueData {
    const DrumKitCueFunc func00;
    const DrumKitCueFunc func04;
    const DrumKitCueFunc func08;
    const DrumKitCueFunc func0C;
    const DrumKitCueFunc func10;
    const DrumKitCueFunc func14;
    u32 unk18;
};


// Engine Data:
extern const char D_08059f94[];
extern const char D_08059f98[];
extern const char D_08059f9c[];
extern const char D_08059fb4[];
extern const char D_08059fd0[];
extern const char D_08059fe8[];
extern const char D_0805a004[];
extern const char D_0805a020[];
extern const char D_0805a038[];
extern const char D_0805a048[];
extern const char D_0805a058[];
extern const char D_0805a06c[];


// Engine Definition Data:
extern struct DrumTechNote *tanuki_and_monkey_bgm_seq_table[];
extern u16 D_089dfe94[];
extern struct DrumTechKit *drum_intro_kits[];
extern struct CompressedData *drum_intro_buffered_textures[];
extern struct GraphicsTable *drum_intro_gfx_tables[];
extern struct Vector2 D_089e0164[];
extern struct Animation *D_089e0170[][4];
extern u16 D_089e01b0[];
extern s8 D_089e01b8[][3];
extern u8 D_089e01c4[];
extern struct DrumKitCueData *D_089e0398[];
extern struct DrumKitCueData D_089e03a4;
extern struct DrumKitCueData D_089e03c0;
extern struct DrumKitCueData D_089e03dc;


// Functions:
extern void func_080239a0(); // Engine Event 0x08 (?)
extern void func_080239bc(); // Engine Event 0x09 (?)
// extern ? func_080239ec(?);
// extern ? func_08023a18(?);
extern void func_08023bb8(); // Engine Event 0x0B (?)
extern void func_08023bcc(); // Engine Event 0x0C (?)
extern void func_08023bf4(); // Engine Event 0x0D (?)
extern void func_08023c0c(); // Engine Event 0x0E (?)
extern void func_08023c44(); // Engine Event 0x0F (?)
extern void func_08023c58(); // Engine Event 0x0A (?)
extern void drum_intro_cue_spawn_auto(struct Cue *, struct DrumIntroCue *, u32 buttonMask); // Cue - Spawn (Auto-Input)
extern u32  drum_intro_cue_update_auto(struct Cue *, struct DrumIntroCue *, u32 runningTime, u32 duration); // Cue - Update (Auto-Input)
extern void drum_intro_cue_despawn_auto(struct Cue *, struct DrumIntroCue *); // Cue - Despawn (Auto-Input)
extern void drum_intro_cue_hit_auto(struct Cue *, struct DrumIntroCue *, u32 pressed, u32 released); // Cue - Hit (Auto-Input)
extern void drum_intro_cue_barely_auto(struct Cue *, struct DrumIntroCue *, u32 pressed, u32 released); // Cue - Barely (Auto-Input)
extern void drum_intro_cue_miss_auto(struct Cue *, struct DrumIntroCue *); // Cue - Miss (Auto-Input)
// extern ? func_08023d78(?);
// extern ? func_08023da0(?);
extern void func_08023da4(); // Drum Kit Event - D-Pad Left
extern void func_08023df8(); // Drum Kit Event - B Button
// extern ? func_08023e4c(?);
extern void func_08023e50(); // Drum Kit Event - D-Pad Right
extern void func_08023edc(); // Drum Kit Event - A Button
extern void func_08023f68(); // Drum Kit Event - STUB
extern void func_08023f6c(); // Drum Kit Event - D-Pad Down
extern void func_08023ffc(); // Drum Kit Event - D-Pad Up (Drum Kit 2)
extern void func_080240a4(); // Drum Kit Event - L Button
extern void func_08024134(); // Drum Kit Event - R Button
extern void func_080241c0(); // Drum Kit Event - D-Pad Up (Drum Kit 1)
extern void drum_intro_init_gfx3(void); // Graphics Init. 3
extern void drum_intro_init_gfx2(void); // Graphics Init. 2
extern void drum_intro_init_gfx1(void); // Graphics Init. 1
extern void drum_intro_engine_start(u32 version); // Game Engine Start
extern void drum_intro_engine_event_stub(); // Engine Event 0x10 (STUB)
extern void func_0802497c(); // Engine Event 0x00 (?)
extern void func_080249c0(); // Engine Event 0x01 (?)
// extern ? func_080249f0(?);
extern void func_08024a4c(); // Engine Event 0x02 (?)
extern void func_08024ae4(); // Engine Event 0x03 (?)
extern void func_08024ba0(); // Engine Event 0x04 (?)
// extern ? func_08024bd0(?);
extern void func_08024be8(); // Engine Event 0x07 (?)
// extern ? func_08024bfc(?);
// extern ? func_08024c2c(?);
extern void drum_intro_engine_update(void); // Game Engine Update
extern void drum_intro_engine_stop(void); // Game Engine Stop
extern void drum_intro_cue_spawn(struct Cue *, struct DrumIntroCue *, u32 type); // Cue - Spawn
extern u32  drum_intro_cue_update(struct Cue *, struct DrumIntroCue *, u32 runningTime, u32 duration); // Cue - Update
extern void drum_intro_cue_despawn(struct Cue *, struct DrumIntroCue *); // Cue - Despawn
extern void drum_intro_cue_hit(struct Cue *, struct DrumIntroCue *, u32 pressed, u32 released); // Cue - Hit
extern void drum_intro_cue_barely(struct Cue *, struct DrumIntroCue *, u32 pressed, u32 released); // Cue - Barely
extern void drum_intro_cue_miss(struct Cue *, struct DrumIntroCue *); // Cue - Miss
extern void drum_intro_input_event(u32 pressed, u32 released); // Input Event
extern void drum_intro_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void drum_intro_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
// extern ? func_08024ed0(?);
extern void func_08024ef4(); // Engine Event 0x05 (?)
extern void func_08024f64(); // Engine Event 0x06 (?)
extern void func_08024fb4(); // Drum Kit Cue Func. 0
extern void func_08024fbc(); // Drum Kit Cue Func. 1
extern void func_08024fc4(); // Drum Kit Cue Func. 2
extern void func_08024ff4(); // Drum Kit Cue Func. 3
extern void func_08025020(); // Drum Kit Cue Func. 4
extern void func_08025038(); // Drum Kit Cue Func. 5
extern void func_080251d0(); // Drum Kit Cue Func. 0
extern void func_080251d8(); // Drum Kit Cue Func. 1
extern void func_080251e8(); // Drum Kit Cue Func. 2
extern void func_080251ec(); // Drum Kit Cue Func. 3
extern void func_080251f0(); // Drum Kit Cue Func. 4
extern void func_080251fc(); // Drum Kit Cue Func. 5
extern void func_08025204(); // Drum Kit Cue Func. 0
extern void func_0802520c(); // Drum Kit Cue Func. 1
extern void func_08025214(); // Drum Kit Cue Func. 2
extern void func_08025218(); // Drum Kit Cue Func. 3
extern void func_0802521c(); // Drum Kit Cue Func. 4
extern void func_08025220(); // Drum Kit Cue Func. 5
