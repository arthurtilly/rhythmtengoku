#pragma once

#include "global.h"
#include "scenes.h"

// Scene Macros/Enums:
enum RhythmToysEnum {
    RHYTHM_TOY_CAT_MACHINE,
    RHYTHM_TOY_MECHANICAL_HORSE,
    RHYTHM_TOY_LOVE_MACHINE,
    RHYTHM_TOY_RAP_MACHINE,

    TOTAL_RHYTHM_TOYS
};

enum EndlessGamesEnum {
    ENDLESS_GAME_MR_UPBEAT,
    ENDLESS_GAME_SICK_BEATS,
    ENDLESS_GAME_QUIZ_SHOW,
    ENDLESS_GAME_MANNEQUIN_FACTORY,

    TOTAL_ENDLESS_GAMES
};

enum DrumLessonsEnum {
    DRUM_LESSON_BASIC_1,
    DRUM_LESSON_BASIC_2,
    DRUM_LESSON_SHORT_1,
    DRUM_LESSON_SHORT_2,
    DRUM_LESSON_SHORT_3,
    DRUM_LESSON_SHORT_4,
    DRUM_LESSON_SHORT_5,
    DRUM_LESSON_SHORT_6,
    DRUM_LESSON_SHORT_7,
    DRUM_LESSON_SHORT_8,
    DRUM_LESSON_SHORT_9,
    DRUM_LESSON_LONG_1,
    DRUM_LESSON_LONG_2,
    DRUM_LESSON_LONG_3,
    DRUM_LESSON_LONG_4,
    DRUM_LESSON_LONG_5,
    DRUM_LESSON_LONG_6,
    DRUM_LESSON_HI_TECH_1,
    DRUM_LESSON_HI_TECH_2,

    TOTAL_DRUM_LESSONS
};


// Scene Types:
struct MedalCornerSceneData {
    /* add fields here */
};

struct MedalCornerLevel {
    struct Scene *scene;
    const char *title;
    struct Animation *icon;
    u8 medalsToUnlock;
};

struct MedalCornerMenu {
    u8 levelCount;
    struct SequenceData *bgm;
    struct GraphicsTable *gfx;
    struct MedalCornerLevel *levels;
};


// Scene Data:
extern struct MedalCornerMenu *medal_corner_menu_table[];
extern struct Animation *lessons_menu_rank_icons[];
extern char medal_corner_locked_text[];
extern struct CompressedGraphics *medal_corner_buffered_textures[];


// Functions:
// extern ? func_0801d0b8(?); // ?
// extern ? func_0801d11c(?); // ?
// extern ? func_0801d14c(?); // ?
// extern ? func_0801d160(?); // ?
// extern ? func_0801d1f0(?); // ?
// extern ? func_0801d204(?); // ?
// extern ? func_0801d23c(?); // ?
// extern ? func_0801d388(?); // ?
// extern ? func_0801d410(?); // ?
// extern ? func_0801d438(?); // ?
// extern ? func_0801d474(?); // ?
// extern ? func_0801d4b0(?); // ?
// extern ? func_0801d4c8(?); // ?
// extern ? func_0801d580(?); // Init. Static Variables
// extern ? func_0801d594(?); // Graphics Init. 3
// extern ? func_0801d5c0(?); // Graphics Init. 2
// extern ? func_0801d5f4(?); // Graphics Init. 1
// extern ? func_0801d630(?); // Scene Start
// extern ? func_0801d6c4(?); // ?
// extern ? func_0801d6d0(?); // ?
// extern ? func_0801d6e0(?); // Scene Update (Paused)
// extern ? func_0801d6e4(?); // ?
// extern ? func_0801d700(?); // Scene Update (Active)
// extern ? func_0801d818(?); // ?
// extern ? func_0801d834(?); // Scene Stop
// extern ? func_0801d848(?); // ? (Script Function)
