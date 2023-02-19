#pragma once

#include "global.h"
#include "engines.h"
#include "engines/night_walk.h"

#include "games/rhythm_toys/graphics/rhythm_toys_graphics.h"

// Engine Types:
struct RhythmToysInfo {
    /* add fields here */
};

struct RhythmToysCue {
    /* add fields here */
};

struct RhythmToysDemo {
    u16 button;
    u16 deltaTime;
};

struct RhythmToysSpriteData {
    struct Animation *anim;
    struct Vector2 *vec2;
};

typedef void (*RhythmToysPlayFunc)(u32 button);


// Engine Macros/Enums:
enum RhythmToysVersionsEnum {
    ENGINE_VER_CAT_MACHINE_1,
    ENGINE_VER_CAT_MACHINE_2,
    ENGINE_VER_CONFESSION_MACHINE,
    ENGINE_VER_RAP_MACHINE
};

enum RhythmToysButtonsEnum {
    RHYTHM_TOYS_A_BUTTON,
    RHYTHM_TOYS_B_BUTTON,
    RHYTHM_TOYS_UP_BUTTON,
    RHYTHM_TOYS_DOWN_BUTTON,
    RHYTHM_TOYS_LEFT_BUTTON,
    RHYTHM_TOYS_RIGHT_BUTTON
};

enum RhythmToysSpritesEnum {
    RHYTHM_TOYS_SPRITE_A_BUTTON,
    RHYTHM_TOYS_SPRITE_B_BUTTON,
    RHYTHM_TOYS_SPRITE_DPAD_UP,
    RHYTHM_TOYS_SPRITE_DPAD_DOWN,
    RHYTHM_TOYS_SPRITE_DPAD_LEFT,
    RHYTHM_TOYS_SPRITE_DPAD_RIGHT,
    RHYTHM_TOYS_SPRITE_DEMO_ICON,
    RHYTHM_TOYS_SPRITE_MACHINE_R,
    RHYTHM_TOYS_SPRITE_MACHINE_L
};

enum RhythmToysDemoButtonsEnum {
    RHYTHM_TOYS_DEMO_PRESS_A,
    RHYTHM_TOYS_DEMO_PRESS_B,
    RHYTHM_TOYS_DEMO_PRESS_UP,
    RHYTHM_TOYS_DEMO_PRESS_DOWN,
    RHYTHM_TOYS_DEMO_PRESS_LEFT,
    RHYTHM_TOYS_DEMO_PRESS_RIGHT,
    RHYTHM_TOYS_DEMO_REST,
    RHYTHM_TOYS_DEMO_STOP = -1
};

#define END_OF_RHYTHM_TOYS_DEMO { RHYTHM_TOYS_DEMO_STOP, 0x00 }


// Engine Definition Data:
extern struct DrumTechNote *cat_machine_1_drum_seq_table[];
extern struct DrumTechNote *cat_machine_2_drum_seq_table[];
extern struct SequenceData *cat_machine_meow_sfx_table[];
extern struct SequenceData **rap_machine_sfx_pool[];
extern struct SequenceData *const *confession_machine_sfx_table[];
extern struct RhythmToysSpriteData *rhythm_toys_sprite_table[];
extern struct RhythmToysDemo *rhythm_toys_demo_table[];
extern struct CompressedGraphics *rhythm_toys_buffered_textures[];
extern struct GraphicsTable *rhythm_toys_gfx_tables[];
extern u8 rhythm_toys_button_anim_ids[];
extern u16 *rhythm_toys_demo_bpm_table[];
extern u8 rhythm_toys_machine_anim_ids[];
extern RhythmToysPlayFunc rhythm_toys_play_func_table[];


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
extern void rhythm_toys_init_gfx3(void); // Graphics Init. 3
extern void rhythm_toys_init_gfx2(void); // Graphics Init. 2
extern void rhythm_toys_init_gfx1(void); // Graphics Init. 1
extern void rhythm_toys_engine_start(u32 version); // Game Engine Start
extern void rhythm_toys_engine_event_stub(void); // Engine Event 0x00 (STUB)
// extern ? func_08044730(?);
// extern ? func_0804475c(?);
// extern ? func_080447f4(?);
// extern ? func_08044810(?);
extern void rhythm_toys_engine_update(void); // Game Engine Update
extern void rhythm_toys_engine_stop(void); // Game Engine Stop
extern void rhythm_toys_cue_spawn(struct Cue *, struct RhythmToysCue *, u32 param); // Cue - Spawn
extern u32  rhythm_toys_cue_update(struct Cue *, struct RhythmToysCue *, u32 runningTime, u32 duration); // Cue - Update
extern void rhythm_toys_cue_despawn(struct Cue *, struct RhythmToysCue *); // Cue - Despawn
extern void rhythm_toys_cue_hit(struct Cue *, struct RhythmToysCue *, u32 pressed, u32 released); // Cue - Hit
extern void rhythm_toys_cue_barely(struct Cue *, struct RhythmToysCue *, u32 pressed, u32 released); // Cue - Barely
extern void rhythm_toys_cue_miss(struct Cue *, struct RhythmToysCue *); // Cue - Miss
extern void rhythm_toys_input_event(u32 pressed, u32 released); // Input Event
extern void rhythm_toys_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void rhythm_toys_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void rhythm_toys_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
