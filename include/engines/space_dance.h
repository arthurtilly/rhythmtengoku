#pragma once

#include "global.h"
#include "engines.h"

#include "games/space_dance/graphics/space_dance_graphics.h"

// Engine Macros/Enums:
enum SpaceDanceVersionsEnum {
    ENGINE_VER_SPACE_DANCE,
    ENGINE_VER_COSMIC_DANCE,
    ENGINE_VER_SPACE_DANCE_REMIX_3
};

enum SpaceDanceAnimationsEnum {
    SPACE_DANCE_ANIM_DANCER_RIGHT,
    SPACE_DANCE_ANIM_DANCER_PUNCH,
    SPACE_DANCE_ANIM_DANCER_DOWN,
    SPACE_DANCE_ANIM_GRAMPS_BEAT,
    SPACE_DANCE_ANIM_GRAMPS_INSTRUCT_DOWN,
    SPACE_DANCE_ANIM_GRAMPS_INSTRUCT_PUNCH,
    SPACE_DANCE_ANIM_GRAMPS_INSTRUCT_RIGHT,
    SPACE_DANCE_ANIM_DANCER_BEAT,
    SPACE_DANCE_ANIM_DANCER_HURT,
    SPACE_DANCE_ANIM_DANCER_RIGHT_CUE,
    SPACE_DANCE_ANIM_DANCER_DOWN_CUE,
    SPACE_DANCE_ANIM_DANCER_PUNCH_CUE1,
    SPACE_DANCE_ANIM_DANCER_PUNCH_CUE2,
    SPACE_DANCE_ANIM_HURT_EFFECT,
    SPACE_DANCE_ANIM_BLANK1,
    SPACE_DANCE_ANIM_TUTORIAL_ICONS,
    SPACE_DANCE_ANIM_SPARKLE,
    SPACE_DANCE_ANIM_BLANK2,
    SPACE_DANCE_ANIM_GRAMPS_RIGHT,
    SPACE_DANCE_ANIM_GRAMPS_RIGHT_CUE,
    SPACE_DANCE_ANIM_GRAMPS_DOWN,
    SPACE_DANCE_ANIM_GRAMPS_DOWN_CUE,
    SPACE_DANCE_ANIM_GRAMPS_PUNCH,
    SPACE_DANCE_ANIM_GRAMPS_PUNCH_CUE1,
    SPACE_DANCE_ANIM_GRAMPS_PUNCH_CUE2,
    SPACE_DANCE_ANIM_GRAMPS_SPEAK,
    SPACE_DANCE_ANIM_GRAMPS_BLINK,
    SPACE_DANCE_ANIM_GRAMPS_FROWN,
    SPACE_DANCE_ANIM_GRAMPS_RAISE_BROW
};

enum SpaceDancerAnimationsEnum {
    SPACE_DANCER_ANIM_RIGHT,
    SPACE_DANCER_ANIM_PUNCH,
    SPACE_DANCER_ANIM_DOWN,
    SPACE_DANCER_ANIM_RIGHT_CUE,
    SPACE_DANCER_ANIM_PUNCH_CUE1,
    SPACE_DANCER_ANIM_PUNCH_CUE2,
    SPACE_DANCER_ANIM_DOWN_CUE
};

enum SpaceGrampsAnimationsEnum {
    SPACE_GRAMPS_ANIM_RIGHT,
    SPACE_GRAMPS_ANIM_PUNCH,
    SPACE_GRAMPS_ANIM_DOWN,
    SPACE_GRAMPS_ANIM_RIGHT_CUE,
    SPACE_GRAMPS_ANIM_PUNCH_CUE1,
    SPACE_GRAMPS_ANIM_PUNCH_CUE2,
    SPACE_GRAMPS_ANIM_DOWN_CUE,
    SPACE_GRAMPS_ANIM_SPEAK,
    SPACE_GRAMPS_ANIM_BLINK
};


// Engine Types:
struct SpaceDanceEngineData {
    u8 pad[0x38];
};

struct SpaceDanceCue {
    /* add fields here */
};


// Engine Data:
extern const char D_0805a8b8[];


// Engine Definition Data:
extern struct Animation **space_dance_anim_table[];
extern struct CompressedData *space_dance_buffered_textures[];
extern struct GraphicsTable *space_dance_gfx_tables[];
extern u8 space_dancer_anim_map[];
extern u8 space_gramps_anim_map[];
extern struct SongHeader *space_dancer_sounds[];
extern u8 space_dance_cue_anim_map[];
extern s16 D_089e6ebc[];


// Functions:
extern struct Animation *space_dance_get_anim(u32 anim); // Get Animation
extern void space_dance_init_gfx3(void); // Graphics Init. 3
extern void space_dance_init_gfx2(void); // Graphics Init. 2
extern void space_dance_init_gfx1(void); // Graphics Init. 1
extern void space_dance_engine_start(u32 version); // Game Engine Start
extern void space_dance_engine_event_stub(); // Engine Event 08 (STUB)
extern void func_0803d2c0(); // Engine Event 00 (?)
// extern ? func_0803d388(?);
extern void func_0803d3fc(); // Engine Event 05 (?)
extern void func_0803d408(); // Engine Event 06 (?)
extern void func_0803d414(); // Engine Event 07 (?)
extern void func_0803d460(); // Engine Event 01 (?)
// extern ? func_0803d478(?);
extern void func_0803d4bc(); // Engine Event 02 (?)
extern void func_0803d4e0(); // Engine Event 03 (?)
// extern ? func_0803d4f0(?);
extern void func_0803d588(); // Engine Event 04 (?)
extern void space_dance_engine_update(void); // Game Engine Update
extern void space_dance_engine_stop(void); // Game Engine Stop
extern void space_dance_cue_spawn(struct Cue *, struct SpaceDanceCue *, u32 move); // Cue - Spawn
extern u32  space_dance_cue_update(struct Cue *, struct SpaceDanceCue *, u32 runningTime, u32 duration); // Cue - Update
extern void space_dance_cue_despawn(struct Cue *, struct SpaceDanceCue *); // Cue - Despawn
// extern ? func_0803d5e4(?);
extern void space_dance_cue_hit(struct Cue *, struct SpaceDanceCue *, u32 pressed, u32 released); // Cue - Hit
// extern ? func_0803d670(?);
// extern ? func_0803d6c0(?);
extern void space_dance_cue_barely(struct Cue *, struct SpaceDanceCue *, u32 pressed, u32 released); // Cue - Barely
extern void space_dance_cue_miss(struct Cue *, struct SpaceDanceCue *); // Cue - Miss
// extern ? func_0803d82c(?);
extern void space_dance_input_event(u32 pressed, u32 released); // Input Event
extern void space_dance_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void space_dance_common_display_text(const char *); // Common Event 1 (Display Text)
extern void space_dance_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
