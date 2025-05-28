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
    u8 version;
    u8 isQuartet;
    u8 unk2;
    struct Trio {
        s16 sprites[4];
        u8 beatAnimation;
        u8 resetBeatAnimation;
        u8 unkB;
    } trio;
    
    u8 grayscale;
    u8 revertGrayscale;
    u16 textBox;
    struct TextPrinter *textPrinter;
    u16 lionClapVolume;
    u16 unk14;
};

struct ClappyTrioCue {
    u16 unk0_b0:5;
    u16 smileAfter:4;
    u32 unk;
};

// Engine Definition Data:
extern struct Animation **clappy_trio_anim_table[];
extern struct CompressedData *clappy_trio_buffered_textures[];
extern struct GraphicsTable *clappy_trio_gfx_tables[];


// Functions:
extern struct Animation *clappy_trio_get_anim(u32 anim); // Get Animation
// extern ? func_080303a4(?); Init. Lion Sprites
extern void clappy_trio_init_gfx3(void);
extern void clappy_trio_init_gfx2(void);
extern void clappy_trio_init_gfx1(void);
extern void clappy_trio_engine_start(u32 version); // Game Engine Start
extern void clappy_trio_crouch(u32 mute); // Engine Event 00 (Crouch)
extern void clappy_trio_crouch_smirk(u32 mute); // Engine Event 01 (Crouch - Smirk)
extern void clappy_trio_manual_clap(u32 lion); // Engine Event 02 (Manual Clap)
extern void clappy_trio_set_clap_volume(); // Engine Event 04 (Set Manual Clap Volume)
extern void clappy_trio_enable_grayscale(u8 enable); // Engine Event 03 (Enable Grayscale Effect)
extern void clappy_trio_engine_update(void); // Game Engine Update
extern void clappy_trio_engine_stop(void); // Game Engine Stop
extern void clappy_trio_cue_spawn(struct Cue *cue, struct ClappyTrioCue *info, u32 smileAfter);
extern u32  clappy_trio_cue_update(struct Cue *cue, struct ClappyTrioCue *data, u32 runningTime, u32 duration);
extern void clappy_trio_cue_despawn(void);
extern void clappy_trio_cue_hit(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released);
extern void clappy_trio_cue_barely(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released);
extern void clappy_trio_cue_miss(struct Cue *cue, struct ClappyTrioCue *info);
extern void clappy_trio_input_event(u32 pressed, u32 released); // Input Event
extern void clappy_trio_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void clappy_trio_common_display_text(char *text); // Common Event 1 (Display Text)
extern void clappy_trio_textbox_shown(u32 enabled); // Engine Event 05 (Set Text Box Visibility)
extern void clappy_trio_common_init_tutorial(struct Scene *skipDestination); // Common Event 2 (Init. Tutorial)
