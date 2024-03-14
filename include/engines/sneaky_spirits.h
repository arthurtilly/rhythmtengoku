#pragma once

#include "global.h"
#include "engines.h"

#include "games/sneaky_spirits/graphics/sneaky_spirits_graphics.h"

// Engine Macros/Enums:
#define SNEAKY_SPIRITS_RAIN_DROP_AMOUNT 30
#define SNEAKY_SPIRITS_RAIN_SPLASH_AMOUNT 20

enum SneakySpiritsVersionsEnum {
    SNEAKY_SPIRITS_VERSION_1,
    SNEAKY_SPIRITS_VERSION_REMIX,
    SNEAKY_SPIRITS_VERSION_2
};


// Engine Types:
struct SneakySpiritsEngineData {
    struct BitmapFontOBJ *unk0;  // Pointer: Font? (Related to Tutorial Text)
    u8  version;        // Value:   Version
    u8  rainSlow;       // Flag:    Slow-Motion Rain
    s16 rainDrops[SNEAKY_SPIRITS_RAIN_DROP_AMOUNT];      // Sprite: Raindrops
    u16 rainDropNext;       // Counter: Next Raindrop to Update
    s16 rainSplashes[SNEAKY_SPIRITS_RAIN_SPLASH_AMOUNT]; // Sprite: Rain Splashes
    u16 rainSplashNext;     // Counter: Next Rain Splash to Update
    s16 tree;           // Sprite:  Tree
    s16 bow;            // Sprite:  Bow
    u8  arrowReady;     // Flag:    Bow Has Arrow
    s16 door;           // Sprite:  Door
    s16 backWall;       // Sprite:  Back Wall
    s16 ghostWalk;      // Sprite:  Sneaky Spirit (Moving)
    u16 maxSteps;       // Const:   7 (total number of horizontal positions the ghost can appear)
    s16 ghostMask;      // Sprite:  Wall Mask (used to hide the Sneaky Spirit when moving low)
    s16 ghostHit;       // Sprite:  Sneaky Spirit (Hit)
    u16 ghostHeight;    // Value:   Sneaky Spirit Height of Next Motion { Default = 0x100 }
    struct SoundPlayer *rainChannel; // Pointer: Audio Channel Playing Wind/Rain SFX
    s16 text;           // Sprite:  Tutorial Text
    u8  slowMotionHit;  // Flag:    Slow-Motion Effect On Hit
    u8  freezeRain;     // Flag:    Freeze Slow-Motion Rain
    s16 tutorialGhost;  // Sprite:  Sneaky Spirit (Tutorial Example)
};

struct SneakySpiritsCue {
    u32 unused0;
    u32 unused4;
    u32 unused8;
    u32 unusedC;
    u32 unused10;
    u32 unused14;
    u32 unused18;
    u32 unused1C;
    u32 unused20;
    u16 unused24;
    u8 disableTaunt;
};


// Engine Data:
extern const char D_08059f90[];   // Empty Default Text


// Engine Definition Data:
extern struct CompressedGraphics *sneaky_spirits_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable *sneaky_spirits_gfx_tables[]; // Graphics Table


// Functions:
extern void sneaky_spirits_show_ghost(u32); // Engine Event 00 (Show Ghost)
extern void sneaky_spirits_init_rain(void); // Initialise Rain
extern void sneaky_spirits_update_fast_rain(void); // Update Rain
extern void sneaky_spirits_update_rain(void); // Update Rain If Not In Slow-Motion
extern void sneaky_spirits_set_rain_slowmo(u32); // Set Rain Speed
extern void sneaky_spirits_event_set_rain_speed(u32); // Engine Event 06 (Set Rain Speed)
extern void sneaky_spirits_freeze_slow_rain(u32); // Engine Event 07 (Freeze Slow-Motion Rain)
extern void sneaky_spirits_init_gfx3(void); // Graphics Init. 3
extern void sneaky_spirits_init_gfx2(void); // Graphics Init. 2
extern void sneaky_spirits_init_gfx1(void); // Graphics Init. 1
extern void sneaky_spirits_engine_start(u32 version); // Game Engine Start
extern void sneaky_spirits_engine_event_stub(void); // Engine Event 0A (Stub)
extern void sneaky_spirits_set_ghost_height(u32); // Engine Event 01 (Set Next Vertical Position)
extern void sneaky_spirits_spawn_bow(void); // Engine Event 02 (Spawn Bow)
extern void sneaky_spirits_draw_bow(void); // Engine Event 03 (Draw Bow)
extern void sneaky_spirits_wind_sfx_enabled(u32); // Engine Event 04 (Play Wind/Rain SFX)
extern void sneaky_spirits_update_wind_sfx(void); // Cross-Fade Music and Wind/Rain SFX
extern void sneaky_spirits_display_text(char *); // Engine Event 05 (Display Text)
extern void sneaky_spirits_display_tutorial_ghost(u32); // Engine Event 08 (Display Tutorial Sneaky Spirit)
extern void sneaky_spirits_animate_tutorial_ghost(u32); // Engine Event 09 (Animate Tutorial Sneaky Spirit)
extern void sneaky_spirits_engine_update(void); // Game Engine Update
extern void sneaky_spirits_engine_stop(void); // Game Engine Close
extern void sneaky_spirits_cue_spawn(struct Cue *, struct SneakySpiritsCue *, u32 disableTaunt); // Cue - Spawn
extern u32  sneaky_spirits_cue_update(struct Cue *, struct SneakySpiritsCue *, u32 runningTime, u32 duration); // Cue - Update
extern void sneaky_spirits_cue_despawn(struct Cue *, struct SneakySpiritsCue *); // Cue - Despawn
extern void sneaky_spirits_stop_slow_motion(void); // Revert Slow-Motion Effects
extern void sneaky_spirits_cue_hit(struct Cue *, struct SneakySpiritsCue *, u32 pressed, u32 released); // Cue - Hit
extern void sneaky_spirits_cue_barely(struct Cue *, struct SneakySpiritsCue *, u32 pressed, u32 released); // Cue - Barely
extern void sneaky_spirits_cue_miss(struct Cue *, struct SneakySpiritsCue *); // Cue - Miss
extern void sneaky_spirits_input_event(u32 pressed, u32 released); // Input Event
extern void sneaky_spirits_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void sneaky_spirits_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
