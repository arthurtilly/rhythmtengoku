#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

// Engine Types:
struct RhythmToyInfo {
    /* add fields here */
};

struct RhythmToyCue {
    /* add fields here */
};

struct RhythmToyDemo {
    u16 button;
    u16 deltaTime;
};

struct RhythmToySpriteData {
    const struct Animation *anim;
    const struct Vector2 *vec2;
};

typedef void (*RhythmToyPlayFunc)(u32 button);


// Engine Macros/Enums:
enum RhythmToyVersionsEnum {
    ENGINE_VER_CAT_MACHINE_1,
    ENGINE_VER_CAT_MACHINE_2,
    ENGINE_VER_CONFESSION_MACHINE,
    ENGINE_VER_RAP_MACHINE
};

enum RhythmToyButtonsEnum {
    RHYTHM_TOY_A_BUTTON,
    RHYTHM_TOY_B_BUTTON,
    RHYTHM_TOY_UP_BUTTON,
    RHYTHM_TOY_DOWN_BUTTON,
    RHYTHM_TOY_LEFT_BUTTON,
    RHYTHM_TOY_RIGHT_BUTTON
};

enum RhythmToySpritesEnum {
    RHYTHM_TOY_SPRITE_A_BUTTON,
    RHYTHM_TOY_SPRITE_B_BUTTON,
    RHYTHM_TOY_SPRITE_DPAD_UP,
    RHYTHM_TOY_SPRITE_DPAD_DOWN,
    RHYTHM_TOY_SPRITE_DPAD_LEFT,
    RHYTHM_TOY_SPRITE_DPAD_RIGHT,
    RHYTHM_TOY_SPRITE_DEMO_ICON,
    RHYTHM_TOY_SPRITE_MACHINE_R,
    RHYTHM_TOY_SPRITE_MACHINE_L
};

enum RhythmToyDemoButtonsEnum {
    RHYTHM_TOY_DEMO_PRESS_A,
    RHYTHM_TOY_DEMO_PRESS_B,
    RHYTHM_TOY_DEMO_PRESS_UP,
    RHYTHM_TOY_DEMO_PRESS_DOWN,
    RHYTHM_TOY_DEMO_PRESS_LEFT,
    RHYTHM_TOY_DEMO_PRESS_RIGHT,
    RHYTHM_TOY_DEMO_REST,
    RHYTHM_TOY_DEMO_STOP = -1
};

#define END_OF_RHYTHM_TOY_DEMO { RHYTHM_TOY_DEMO_STOP, 0x00 }


// OAM Animations:


// Palettes:


// Sound Effects:


// Engine Data:


// Engine Definition Data:
extern const struct DrumTechNote *const cat_machine_1_drum_seq_table[];
extern const struct DrumTechNote *const cat_machine_2_drum_seq_table[];
extern const struct SequenceData *const cat_machine_meow_sfx_table[];
extern const struct SequenceData *const *const rap_machine_sfx_pool[];
extern const struct SequenceData *const *const confession_machine_sfx_table[];
extern const struct RhythmToySpriteData *const rhythm_toy_sprite_table[];
extern const struct RhythmToyDemo *const rhythm_toy_demo_table[];
extern const struct CompressedGraphics *const rhythm_toy_buffered_textures[];
extern const struct GraphicsTable *const rhythm_toy_gfx_tables[];
extern const u8 rhythm_toy_button_anim_ids[];
extern const u16 *const rhythm_toy_demo_bpm_table[];
extern const u8 rhythm_toy_machine_anim_ids[];
extern const RhythmToyPlayFunc rhythm_toy_play_func_table[];


// Functions:
extern void func_08044014(u32 button); // Cat Machine Play Func.
extern void func_08044074(u32 button); // Rap Machine Play Func.
extern void func_080441cc(u32 button); // Confession Machine Play Func.
// extern ? func_08044208(?);
// extern ? func_08044228(?);
// extern ? func_08044248(?);
// extern ? func_08044268(?);
// extern ? func_08044320(?);
// extern ? func_080443c0(?);
// extern ? func_0804442c(?);
extern void rhythm_toy_init_gfx3(void); // Graphics Init. 3
extern void rhythm_toy_init_gfx2(void); // Graphics Init. 2
extern void rhythm_toy_init_gfx1(void); // Graphics Init. 1
extern void rhythm_toy_engine_start(u32 version); // Game Engine Start
extern void rhythm_toy_engine_event_stub(void); // Engine Event 0x00 (STUB)
// extern ? func_08044730(?);
// extern ? func_0804475c(?);
// extern ? func_080447f4(?);
// extern ? func_08044810(?);
extern void rhythm_toy_engine_update(void); // Game Engine Update
extern void rhythm_toy_engine_stop(void); // Game Engine Stop
extern void rhythm_toy_cue_spawn(struct Cue *, struct RhythmToyCue *, u32 param); // Cue - Spawn
extern u32  rhythm_toy_cue_update(struct Cue *, struct RhythmToyCue *, u32 runningTime, u32 duration); // Cue - Update
extern void rhythm_toy_cue_despawn(struct Cue *, struct RhythmToyCue *); // Cue - Despawn
extern void rhythm_toy_cue_hit(struct Cue *, struct RhythmToyCue *, u32 pressed, u32 released); // Cue - Hit
extern void rhythm_toy_cue_barely(struct Cue *, struct RhythmToyCue *, u32 pressed, u32 released); // Cue - Barely
extern void rhythm_toy_cue_miss(struct Cue *, struct RhythmToyCue *); // Cue - Miss
extern void rhythm_toy_input_event(u32 pressed, u32 released); // Input Event
extern void rhythm_toy_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void rhythm_toy_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void rhythm_toy_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
