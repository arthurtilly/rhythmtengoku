#pragma once

#include "global.h"
#include "engines.h"

#include "games/clappy_trio/graphics/clappy_trio_graphics.h"

#define gClappyTrio ((struct ClappyTrioEngineData *)gCurrentEngineData)


enum ClappyTrioVersionsEnum {
    CLAPPY_TRIO_VER_DEFAULT,
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

enum ClappyTrioBeatAnimationState {
    CLAPPY_TRIO_ANIM_STATE_BEAT,
    CLAPPY_TRIO_ANIM_STATE_GLARE,
    CLAPPY_TRIO_ANIM_STATE_SMILE
};

struct Trio {
    s16 sprites[4];
    u8 beatAnimation;
    u8 resetBeatAnimation;
    u8 unkB;
};
struct ClappyTrioEngineData {
    u8 version;
    u8 isQuartet;
    u8 unk2;
    struct Trio trio;

    u8 grayscale;
    u8 revertGrayscale;
    s16 textBox;
    struct TextPrinter *textPrinter;
    u8_8 lionClapVolume;
    u16 unk14;
};

struct ClappyTrioCue {
    u16 unk0_b0:5;
    u16 smileAfter:4;
    u32 unk;
};


extern struct Animation **clappy_trio_anim_table[];
extern struct CompressedData *clappy_trio_buffered_textures[];
extern struct GraphicsTable *clappy_trio_gfx_tables[];


extern struct Animation *clappy_trio_get_anim(s32 anim);
extern void clappy_trio_engine_start(u32 version);
extern void clappy_trio_crouch(u32 mute);
extern void clappy_trio_crouch_smirk(u32 mute);
extern void clappy_trio_manual_clap(u32 lion);
extern void clappy_trio_set_clap_volume(u24_8 volume);
extern void clappy_trio_enable_grayscale(u32 enable);
extern void clappy_trio_engine_update(void);
extern void clappy_trio_engine_stop(void);
extern void clappy_trio_cue_spawn(struct Cue *cue, struct ClappyTrioCue *info, u32 smileAfter);
extern u32 clappy_trio_cue_update(struct Cue *cue, struct ClappyTrioCue *data, u32 runningTime, u32 duration);
extern void clappy_trio_cue_despawn(void);
extern void clappy_trio_cue_hit(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released);
extern void clappy_trio_cue_barely(struct Cue *cue, struct ClappyTrioCue *info, u32 pressed, u32 released);
extern void clappy_trio_cue_miss(struct Cue *cue, struct ClappyTrioCue *info);
extern void clappy_trio_input_event(u32 pressed, u32 released);
extern void clappy_trio_common_beat_animation(void);
extern void clappy_trio_common_display_text(char *text);
extern void clappy_trio_textbox_shown(u32 enabled);
extern void clappy_trio_common_init_tutorial(struct Scene *skipDestination);
