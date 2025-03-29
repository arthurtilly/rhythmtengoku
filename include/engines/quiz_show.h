#pragma once

#include "global.h"
#include "engines.h"
#include "graphics.h"

#include "games/quiz_show/graphics/quiz_show_graphics.h"

// Engine Macros/Enums:
enum QuizShowVersionsEnum {
    QUIZ_SHOW_VER_0,
    QUIZ_SHOW_VER_ENDLESS
};

enum QuizShowCharactersEnum {
    QUIZ_SHOW_CHAR_HOST,
    QUIZ_SHOW_CHAR_PLAYER
};

enum QuizShowHostArmsEnum {
    QUIZ_SHOW_HOST_ARM_RIGHT,
    QUIZ_SHOW_HOST_ARM_LEFT
};


// Engine Types:
struct QuizShowEngineData {
    u8 unk0;
    u32 pad4[0x11];
    u16 pad48;
    u16 unk4a;
    u16 unk4c;
    s16 curScoreSprites[2];
    s16 highScoreSprites[2];
};

struct QuizShowCue {
    /* add fields here */
};

struct QuizShowScriptTable {
    struct Beatscript *scriptA;
    struct Beatscript *scriptB;
    struct QuizShowScriptTable **scriptTable;
};


// Engine Definition Data:
extern struct Animation *quiz_show_arm_r_anim[];
extern struct Animation *quiz_show_arm_l_anim[];
extern struct Animation *quiz_show_face_neutral_anim[];
extern struct Animation *quiz_show_face_success_anim[];
extern struct Animation *quiz_show_face_failure_anim[];
extern struct Animation *quiz_show_host_button_press_anim[];
extern struct Animation *quiz_show_endless_host_face_anim[];
extern struct Animation *quiz_show_endless_player_face_anim[];
extern struct GameEngine quiz_show_engine;


// Functions:
// extern ? func_0803709c(?);
// extern ? func_08037178(?);
extern void func_08037280(); // Engine Event 0F (?)
extern void func_080372c0(); // Engine Event 10 (?)
// extern ? func_080372e8(?);
// extern ? func_08037378(?);
extern void func_080373ac(); // Engine Event 05 (?)
extern void func_080373dc(); // Engine Event 06 (?)
extern void quiz_show_init_gfx3(void); // Graphics Init. 3
extern void quiz_show_init_gfx2(void); // Graphics Init. 2
extern void quiz_show_init_gfx1(void); // Graphics Init. 1
extern void quiz_show_engine_start(u32 version); // Game Engine Start
extern void quiz_show_engine_event_stub(void); // Engine Event 11 (STUB)
// extern ? func_0803785c(?);
// extern ? func_080378d8(?);
extern void func_08037a64(); // Engine Event 01 (?)
// extern ? func_08037a78(?);
extern void func_08037be0(); // Engine Event 00 (?)
extern void func_08037bf4(); // Engine Event 02 (?)
extern void func_08037cb8(); // Engine Event 03 (?)
extern void func_08037cd0(); // Engine Event 04 (?)
extern void quiz_show_engine_update(void); // Game Engine Update
extern void func_08037d00(); // Engine Event 07 (?)
extern void func_08037d0c(); // Engine Event 08 (?)
extern void func_08037d1c(); // Engine Event 09 (?)
extern void func_08037d2c(); // Engine Event 0A (?)
extern void func_08037d6c(); // Engine Event 0B (?)
extern void func_08037d90(); // Engine Event 0C (?)
extern void func_08037dc8(); // Engine Event 0D (?)
extern void func_08037e24(); // Engine Event 0E (?)
extern void quiz_show_engine_stop(void); // Game Engine Stop
extern void quiz_show_cue_spawn(struct Cue *, struct QuizShowCue *, u32 param); // Cue - Spawn
extern u32  quiz_show_cue_update(struct Cue *, struct QuizShowCue *, u32 runningTime, u32 duration); // Cue - Update
extern void quiz_show_cue_despawn(struct Cue *, struct QuizShowCue *); // Cue - Despawn
extern void quiz_show_cue_hit(struct Cue *, struct QuizShowCue *, u32 pressed, u32 released); // Cue - Hit
extern void quiz_show_cue_barely(struct Cue *, struct QuizShowCue *, u32 pressed, u32 released); // Cue - Barely
extern void quiz_show_cue_miss(struct Cue *, struct QuizShowCue *); // Cue - Miss
extern void quiz_show_input_event(u32 pressed, u32 released); // Input Event
extern void quiz_show_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void quiz_show_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void quiz_show_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
