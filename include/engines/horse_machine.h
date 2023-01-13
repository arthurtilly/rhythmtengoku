#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct HorseMachineInfo {
    /* add fields here */
};

struct HorseMachineCue {
    /* add fields here */
};

struct HorseMachineBG {
    const Palette *palette;
    const struct GraphicsTable *gfxTable;
};


// Engine Macros/Enums:
enum HorseLessonsEnum {
    HORSE_LESSON_1_WALK,
    HORSE_LESSON_2_TROT,
    HORSE_LESSON_3_CANTER,
    HORSE_LESSON_4_GALLOP
};


// OAM Animations:


// Palettes:


// Sound Effects:


// Engine Data:
extern const struct GraphicsTable D_0805a924[];
extern const struct GraphicsTable D_0805a948[];
extern const struct GraphicsTable D_0805a96c[];
extern const struct GraphicsTable D_0805a990[];
extern const struct GraphicsTable D_0805a9b4[];
extern const struct GraphicsTable D_0805a9d8[];
extern const char D_0805a9fc[];
extern const s32 D_0805aa00[];
extern const s32 D_0805aa10[];
extern const s32 D_0805aa20[];
extern const s32 D_0805aa40[];
extern const u32 D_0805aa60[][4];
extern const s32 D_0805aaa0[];
extern const s32 D_0805aab0[][4];


// Engine Definition Data:
extern const struct HorseMachineBG horse_machine_backgrounds[];
extern const struct CompressedGraphics *const horse_machine_buffered_textures[];
extern const struct GraphicsTable gfx_table_horse_machine[];
extern const struct SequenceData *const horse_machine_player_horse_sfx[][4];
extern const struct SequenceData *const horse_machine_teacher_horse_sfx[][4];
extern const struct SequenceData *const horse_machine_lesson_bgm[];
extern const struct Animation *const horse_machine_anim[];
extern const struct Animation *const horse_machine_jockey_anim[];
extern const struct Animation *const horse_machine_lesson_text_anim[][4];


// Functions:
// extern ? func_08040c2c(?);
// extern ? func_08040c58(?);
// extern ? func_08040cfc(?);
// extern ? func_08040d10(?);
// extern ? func_08040d90(?);
// extern ? func_08040dd8(?);
// extern ? func_08040e80(?);
// extern ? func_08040eb0(?);
extern void horse_machine_init_gfx3(void); // Graphics Init. 3
extern void horse_machine_init_gfx2(void); // Graphics Init. 2
extern void horse_machine_init_gfx1(void); // Graphics Init. 1
extern void horse_machine_engine_start(u32 version); // Game Engine Start
extern void func_08041444(); // Engine Event 0x00 (?)
extern void func_080415c0(); // Engine Event 0x01 (?)
extern void func_080416cc(); // Engine Event 0x02 (?)
extern void func_08041730(); // Engine Event 0x03 (?)
extern void func_08041744(); // Engine Event 0x04 (?)
extern void func_080417ac(); // Engine Event 0x05 (?)
// extern ? func_0804188c(?);
// extern ? func_08041940(?);
// extern ? func_08041970(?);
// extern ? func_08041c98(?);
// extern ? func_08041ddc(?);
// extern ? func_08041f80(?);
// extern ? func_08042020(?);
// extern ? func_080420c0(?);
// extern ? func_0804231c(?);
// extern ? func_08042438(?);
// extern ? func_0804249c(?);
extern void func_080424f0(); // Engine Event 0x06 (?)
extern void func_08042504(); // Engine Event 0x07 (?)
// extern ? func_08042548(?);
extern void horse_machine_engine_update(void); // Game Engine Update
extern void horse_machine_engine_stop(void); // Game Engine Stop
extern void horse_machine_cue_spawn(struct Cue *, struct HorseMachineCue *, u32 lesson); // Cue - Spawn
extern u32  horse_machine_cue_update(struct Cue *, struct HorseMachineCue *, u32 runningTime, u32 duration); // Cue - Update
extern void horse_machine_cue_despawn(struct Cue *, struct HorseMachineCue *); // Cue - Despawn
extern void horse_machine_cue_hit(struct Cue *, struct HorseMachineCue *, u32 pressed, u32 released); // Cue - Hit
extern void horse_machine_cue_barely(struct Cue *, struct HorseMachineCue *, u32 pressed, u32 released); // Cue - Barely
extern void horse_machine_cue_miss(struct Cue *, struct HorseMachineCue *); // Cue - Miss
extern void horse_machine_input_event(u32 pressed, u32 released); // Input Event
extern void horse_machine_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void horse_machine_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
