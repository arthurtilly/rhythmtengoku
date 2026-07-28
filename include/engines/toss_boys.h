#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

#include "games/toss_boys/graphics/toss_boys_graphics.h"

// Engine Macros/Enums:
enum TossBoysVersionsEnum {
    ENGINE_VER_TOSS_BOYS,
    ENGINE_VER_TOSS_REMIX_5,
    ENGINE_VER_TOSS_BOYS_2
};

enum TossBoysAnimationsEnum {
    TOSS_BOYS_ANIM_BEAT_RED,
    TOSS_BOYS_ANIM_BEAT_BLUE,
    TOSS_BOYS_ANIM_BEAT_YELLOW,
    TOSS_BOYS_ANIM_PASS_RED,
    TOSS_BOYS_ANIM_PASS_BLUE,
    TOSS_BOYS_ANIM_PASS_YELLOW,
    TOSS_BOYS_ANIM_DISPENSER,
    TOSS_BOYS_ANIM_BALL1,
    TOSS_BOYS_ANIM_BALL3,
    TOSS_BOYS_ANIM_BALL2,
    TOSS_BOYS_ANIM_BALL_WOBBLE,
    TOSS_BOYS_ANIM_MISS_RED,
    TOSS_BOYS_ANIM_MISS_BLUE,
    TOSS_BOYS_ANIM_MISS_YELLOW,
    TOSS_BOYS_ANIM_SUPER_PASS_RED,
    TOSS_BOYS_ANIM_SUPER_PASS_BLUE,
    TOSS_BOYS_ANIM_SUPER_PASS_YELLOW,
    TOSS_BOYS_ANIM_POP_EFFECT,
    TOSS_BOYS_ANIM_SUPER_BEAT_RED,
    TOSS_BOYS_ANIM_SUPER_BEAT_BLUE,
    TOSS_BOYS_ANIM_SUPER_BEAT_YELLOW,
    TOSS_BOYS_ANIM_CATCH_RED,
    TOSS_BOYS_ANIM_CATCH_BLUE,
    TOSS_BOYS_ANIM_CATCH_YELLOW,
    TOSS_BOYS_ANIM_READY_RED,
    TOSS_BOYS_ANIM_READY_BLUE,
    TOSS_BOYS_ANIM_READY_YELLOW,
    TOSS_BOYS_ANIM_POP_RED,
    TOSS_BOYS_ANIM_POP_BLUE,
    TOSS_BOYS_ANIM_POP_YELLOW,
    TOSS_BOYS_ANIM_BARELY_RED,
    TOSS_BOYS_ANIM_BARELY_BLUE,
    TOSS_BOYS_ANIM_BARELY_YELLOW,
    TOSS_BOYS_ANIM_ARROW_RED,
    TOSS_BOYS_ANIM_ARROW_BLUE,
    TOSS_BOYS_ANIM_ARROW_YELLOW
};

enum TossBoyActionsEnum {
    TOSS_BOY_ACTION_PASS,
    TOSS_BOY_ACTION_SUPER_PASS,
    TOSS_BOY_ACTION_CATCH,
    TOSS_BOY_ACTION_POP
};


// Engine Types:
struct TossBoysEngineData {
    u8 pad[0x3a4];
};

struct TossBoysCue {
    /* add fields here */
};


// Engine Definition Data:
extern struct Animation **toss_boys_anim_table[];
extern struct DrumTechInstrument toss_boys_drumtech_bank[];
extern u16 toss_boys_button_masks[];
extern struct Animation *D_089e8660[][3];
extern s8 D_089e8690[][3];
extern struct Vector2 D_089e869c[];
extern struct Vector2 D_089e86a8[];
extern u8 toss_boys_arrow_anim_ids[];
extern s16 D_089e86bc[][4];
extern struct SongHeader *toss_boys_ball_bounce_sfx[];
extern struct SongHeader *toss_boys_ball_pop_sfx[];
extern s8 toss_boys_miss_anim_ids[];
extern struct SongHeader *toss_boys_ball_miss_sfx[];
extern u8 D_089e8704[][4];
extern s8 toss_boys_hit_anim_ids[][3];
extern s8 toss_boys_barely_anim_ids[][3];
extern s8 toss_boys_ready_anim_ids[][3];
extern s8 toss_boys_ready_anim_playback[][3];
extern s8 toss_boys_beat_anim_ids[][3];
extern s8 toss_boys_beat_anim_playback[][3];


// Functions:
// extern ? func_0803e824(?);
extern void func_0803e884(); // Engine Event 0x08 (?)
// extern ? func_0803e8b4(?);
// extern ? func_0803e908(?);
// extern ? func_0803e960(?);
extern struct Animation *toss_boys_get_anim(u32 anim); // Get Animation
extern void func_0803e9b0(); // Engine Event 0x03 (?)
extern void func_0803ea08(); // Engine Event 0x04 (?)
extern void toss_boys_init_gfx3(void); // Graphics Init. 3
extern void toss_boys_init_gfx2(void); // Graphics Init. 2
extern void toss_boys_init_gfx1(void); // Graphics Init. 1
extern void toss_boys_engine_start(u32 version); // Game Engine Start
extern void toss_boys_engine_event_stub(void); // Engine Event 0x09 (STUB)
// extern ? func_0803ee18(?);
// extern ? func_0803ee58(?);
// extern ? func_0803eea0(?);
// extern ? func_0803ef64(?);
// extern ? func_0803f038(?);
extern void func_0803f0b8(); // Engine Event 0x06 (?)
extern void func_0803f12c(); // Engine Event 0x07 (?)
extern void toss_boys_engine_update(void); // Game Engine Update
extern void toss_boys_engine_stop(void); // Game Engine Stop
extern void func_0803f1bc(); // Engine Event 0x00 (?)
// extern ? func_0803f1f4(?);
extern void func_0803f390(); // Engine Event 0x01 (?)
extern void func_0803f3b0(); // Engine Event 0x02 (?)
// extern ? func_0803f400(?);
extern void toss_boys_cue_spawn(struct Cue *, struct TossBoysCue *, u32 param); // Cue - Spawn
extern u32  toss_boys_cue_update(struct Cue *, struct TossBoysCue *, u32 runningTime, u32 duration); // Cue - Update
extern void toss_boys_cue_despawn(struct Cue *, struct TossBoysCue *); // Cue - Despawn
// extern ? func_0803f59c(?);
extern void toss_boys_cue_hit(struct Cue *, struct TossBoysCue *, u32 pressed, u32 released); // Cue - Hit
extern void toss_boys_cue_barely(struct Cue *, struct TossBoysCue *, u32 pressed, u32 released); // Cue - Barely
extern void toss_boys_cue_miss(struct Cue *, struct TossBoysCue *); // Cue - Miss
// extern ? func_0803f9a0(?);
// extern ? func_0803fa64(?);
extern void func_0803fb00(); // Engine Event 0x05 (?)
// extern ? func_0803fb14(?);
extern void toss_boys_input_event(u32 pressed, u32 released); // Input Event
extern void toss_boys_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void toss_boys_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void toss_boys_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
