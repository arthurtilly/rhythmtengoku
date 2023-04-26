#pragma once

#include "global.h"
#include "engines.h"

#include "games/rap_men/graphics/rap_men_graphics.h"

// Engine Types:
struct RapMenEngineData {
    u8 version;
    struct BitmapFontOBJ *unk4;
    s16 rapperSprite;
    s16 playerSprite;
    s16 textSprite;
    u16 rapperAnimTimer;
    u16 playerAnimTimer;
    u16 unusedAnimTimer;
    u8 isTutorial;
};

struct RapMenCue {
    u32 sound;
};


// Engine Macros/Enums:
enum RapMenVersionsEnum {
    ENGINE_VER_RAP_MEN,
    ENGINE_VER_RAP_WOMEN
};

enum RapMenCueSoundsEnum {
    RAP_CUE_SFX_SHORT,
    RAP_CUE_SFX_LONG
};

enum RapMenAnimationsEnum {
    RAP_MEN_ANIM_DESUKA,
    RAP_MEN_ANIM_BARELY,
    RAP_MEN_ANIM_HIT,
    RAP_MEN_ANIM_PREPARE,
    RAP_MEN_ANIM_KAMONE,
    RAP_MEN_ANIM_SAIKO,
    RAP_MEN_ANIM_RECOIL,
    RAP_MEN_ANIM_SMOKE,
    RAP_MEN_ANIM_MISS,
    RAP_MEN_ANIM_PLAYER,
    RAP_MEN_ANIM_RAPPER
};

enum RappingAnimationsEnum {
    RAPPING_ANIM_DESUKA,
    RAPPING_ANIM_KAMONE,
    RAPPING_ANIM_SAIKO,
    RAPPING_ANIM_RECOIL,
    RAPPING_ANIM_HONTO
};


// Engine Data:
extern const char D_0805a8b0[]; // Empty Default Text


// Engine Definition Data:
extern struct Animation **rap_men_anim_table[]; // Animation Index (index of pairs of animation pointers; 0 = Rap Men; 1 = Rap Women)
extern struct CompressedGraphics *rap_men_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable *rap_men_gfx_tables[]; // Graphics Table Index
extern u8 rapping_anim_map[];
extern u8 rapping_anim_durations[];
extern struct SequenceData *rap_men_cue_hit_sfx[2][2];
extern struct SequenceData *rap_men_cue_miss_sfx[2];


// Functions:
extern struct Animation *rap_men_get_anim(u32); // Get Animation
extern void rap_men_init_gfx3(void); // Graphics Init. 3
extern void rap_men_init_gfx2(void); // Graphics Init. 2
extern void rap_men_init_gfx1(void); // Graphics Init. 1
extern void rap_men_engine_start(u32 version); // Game Engine Start
extern void rap_men_engine_event_stub(void); // Engine Event 02 (STUB)
extern void rap_men_set_rapper_anim(u32 anim); // Engine Event 00 (Set Rapper Animation)
extern void rap_men_enable_tutorial(u32 isTutorial); // Engine Event 01 (Enable Tutorial)
extern void rap_men_engine_update(void); // Game Engine Update
extern void rap_men_engine_stop(void); // Game Engine Stop
extern void rap_men_cue_spawn(struct Cue *, struct RapMenCue *, u32 sound); // Cue - Spawn
extern u32  rap_men_cue_update(struct Cue *, struct RapMenCue *, u32 runningTime, u32 duration); // Cue - Update
extern void rap_men_cue_despawn(struct Cue *, struct RapMenCue *); // Cue - Despawn
extern void rap_men_cue_hit(struct Cue *, struct RapMenCue *, u32 pressed, u32 released); // Cue - Hit
extern void rap_men_cue_barely(struct Cue *, struct RapMenCue *, u32 pressed, u32 released); // Cue - Barely
extern void rap_men_cue_miss(struct Cue *, struct RapMenCue *); // Cue - Miss
extern void rap_men_input_event(u32 pressed, u32 released); // Input Event
extern void rap_men_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void rap_men_common_display_text(char *); // Common Event 1 (Display Text)
extern void rap_men_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
