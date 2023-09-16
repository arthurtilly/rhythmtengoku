#pragma once

#include "global.h"
#include "engines.h"

#include "games/clappy_trio/graphics/clappy_trio_graphics.h"

// Engine Macros/Enums:
enum ClappyTrioVersionsEnum {
    CLAPPY_TRIO_VER_0,
    CLAPPY_TRIO_VER_SNAPPY
};

enum ClappyTrioAnimationsEnum {
    CLAPPY_TRIO_ANIM_BEAT,
    CLAPPY_TRIO_ANIM_SMILE,
    CLAPPY_TRIO_ANIM_GLARE,
    CLAPPY_TRIO_ANIM_SMIRK,
    CLAPPY_TRIO_ANIM_CLAP,
    CLAPPY_TRIO_ANIM_YOU,
    CLAPPY_TRIO_ANIM_SIGN,
    CLAPPY_TRIO_ANIM_TEXT_BOX
};


// Engine Types:
struct ClappyTrioEngineData {
    u8 pad[0x1c];
};

struct ClappyTrioCue {
    /* add fields here */
};


// Engine Definition Data:
extern struct Animation **clappy_trio_anim_table[];
extern struct CompressedGraphics *clappy_trio_buffered_textures[];
extern struct GraphicsTable *clappy_trio_gfx_tables[];


// Functions:
extern struct Animation *clappy_trio_get_anim(u32 anim); // Get Animation
// extern ? func_080303a4(?);
// extern ? func_0803050c(?);
// extern ? func_0803051c(?);
// extern ? func_0803055c(?);
extern void clappy_trio_engine_start(u32 version); // Game Engine Start
extern void func_0803068c(void); // Engine Event 00 (Crouch)
extern void func_0803074c(void); // Engine Event 01 (Crouch - Smirk)
extern void func_0803080c(u32 lion); // Engine Event 02 (Manual Clap)
extern void func_0803088c(); // Engine Event 04 (Set Manual Clap Volume)
extern void func_08030898(u32 enable); // Engine Event 03 (Enable Grayscale Effect)
extern void clappy_trio_engine_update(void); // Game Engine Update
extern void clappy_trio_engine_stop(void); // Game Engine Stop
extern void clappy_trio_cue_spawn(struct Cue *, struct ClappyTrioCue *, u32 smileAfter);
extern u32  clappy_trio_cue_update(struct Cue *, struct ClappyTrioCue *, u32 runningTime, u32 duration);
extern void clappy_trio_cue_despawn(struct Cue *, struct ClappyTrioCue *);
extern void clappy_trio_cue_hit(struct Cue *, struct ClappyTrioCue *, u32 pressed, u32 released);
extern void clappy_trio_cue_barely(struct Cue *, struct ClappyTrioCue *, u32 pressed, u32 released);
extern void clappy_trio_cue_miss(struct Cue *, struct ClappyTrioCue *);
extern void clappy_trio_input_event(u32 pressed, u32 released); // Input Event
extern void clappy_trio_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void clappy_trio_common_display_text(const char *); // Common Event 1 (Display Text)
extern void func_08030bf0(); // Engine Event 05 (Hide Text Box)
extern void clappy_trio_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
