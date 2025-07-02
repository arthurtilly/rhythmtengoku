#pragma once

#include "global.h"
#include "scenes.h"


// VALUES
enum MedalCornerMenusEnum {
    /* 00 */ MEDAL_CORNER_MENU_RHYTHM_TOYS,
    /* 01 */ MEDAL_CORNER_MENU_ENDLESS_GAMES,
    /* 02 */ MEDAL_CORNER_MENU_DRUM_LESSONS,

    /* -- */ TOTAL_MEDAL_CORNER_MENUS
};

enum RhythmToysEnum {
    /* 00 */ RHYTHM_TOY_CAT_MACHINE,
    /* 01 */ RHYTHM_TOY_MECHANICAL_HORSE,
    /* 02 */ RHYTHM_TOY_LOVE_MACHINE,
    /* 03 */ RHYTHM_TOY_RAP_MACHINE,

    /* -- */ TOTAL_RHYTHM_TOYS
};

enum EndlessGamesEnum {
    /* 00 */ ENDLESS_GAME_MR_UPBEAT,
    /* 01 */ ENDLESS_GAME_SICK_BEATS,
    /* 02 */ ENDLESS_GAME_QUIZ_SHOW,
    /* 03 */ ENDLESS_GAME_MANNEQUIN_FACTORY,

    /* -- */ TOTAL_ENDLESS_GAMES
};

enum DrumLessonsEnum {
    /* -- */ DRUM_LESSON_NULL = -1,

    /* 00 */ DRUM_LESSON_BASIC_1,
    /* 01 */ DRUM_LESSON_BASIC_2,
    /* 02 */ DRUM_LESSON_SHORT_1,
    /* 03 */ DRUM_LESSON_SHORT_2,
    /* 04 */ DRUM_LESSON_SHORT_3,
    /* 05 */ DRUM_LESSON_SHORT_4,
    /* 06 */ DRUM_LESSON_SHORT_5,
    /* 07 */ DRUM_LESSON_SHORT_6,
    /* 08 */ DRUM_LESSON_SHORT_7,
    /* 09 */ DRUM_LESSON_SHORT_8,
    /* 10 */ DRUM_LESSON_SHORT_9,
    /* 11 */ DRUM_LESSON_LONG_1,
    /* 12 */ DRUM_LESSON_LONG_2,
    /* 13 */ DRUM_LESSON_LONG_3,
    /* 14 */ DRUM_LESSON_LONG_4,
    /* 15 */ DRUM_LESSON_LONG_5,
    /* 16 */ DRUM_LESSON_LONG_6,
    /* 17 */ DRUM_LESSON_HI_TECH_1,
    /* 18 */ DRUM_LESSON_HI_TECH_2,

    /* -- */ TOTAL_DRUM_LESSONS
};

enum MedalCornerEventsEnum {
    /* 00 */ MEDAL_CORNER_EV_NONE,
    /* 01 */ MEDAL_CORNER_EV_CONFIRM,
    /* 02 */ MEDAL_CORNER_EV_SCROLL_UP,
    /* 03 */ MEDAL_CORNER_EV_SCROLL_DOWN,
    /* 04 */ MEDAL_CORNER_EV_CANCEL
};


// MACROS
#define gMedalCorner ((struct MedalCornerSceneData *)gCurrentSceneData)


// TYPES
struct MedalCornerSceneData {
    u32 inputsEnabled;
    struct Listbox *listbox;
    s16 medalCountDigit1;
    s16 medalCountDigit2;
    s16 reqCountDigit1;
    s16 reqCountDigit2;
    s16 currentLevelIcon;
    s16 lockedLevelIcon;
    struct MedalCornerMenu *menuData;
    u8 menuID;
};

struct MedalCornerLevel {
    struct Scene *scene;
    const char *title;
    struct Animation *icon;
    u8 medalsToUnlock;
};

struct MedalCornerMenu {
    u8 levelCount;
    struct SongHeader *bgm;
    struct GraphicsTable *gfx;
    struct MedalCornerLevel *levels;
};


// DATA
extern struct MedalCornerMenu *medal_corner_menu_table[];
extern struct Animation *lessons_menu_rank_icons[];
extern char medal_corner_locked_text[];
extern struct CompressedData *medal_corner_buffered_textures[];


// FUNCTIONS
extern void medal_corner_init_lesson_grades(void);
extern void medal_corner_init_level_icon(void);
extern const char *medal_corner_get_level_name(s32 item);
extern void medal_corner_set_current_level(s32 item);
extern struct Scene *medal_corner_get_level_scene(s32 item);
extern u32  medal_corner_level_is_unlocked(s32 item);
extern void medal_corner_init_counters(void);
extern void medal_corner_set_level_req_counter(u32 count);
extern void medal_corner_reset_list_positions(void);
extern void medal_corner_remember_list_position(void);
extern const char *medal_corner_listbox_get_string(s32 item);
extern void medal_corner_listbox_on_scroll(s32 arg, u32 current, u32 previous);
extern void medal_corner_listbox_init(void);
extern void medal_corner_scene_init_memory(void);
extern void medal_corner_scene_init_gfx3(void);
extern void medal_corner_scene_init_gfx2(void);
extern void medal_corner_scene_init_gfx1(void);
extern void medal_corner_scene_start(void *sVar, s32 dArg);
extern void medal_corner_set_lesson_id(s32 item);
extern s32  medal_corner_get_lesson_id(void);
extern void medal_corner_scene_paused(void *sVar, s32 dArg);
extern void medal_corner_use_ui_texture_base(s32 sprite);
extern void medal_corner_scene_update(void *sVar, s32 dArg);
extern u32  medal_corner_scene_inputs_enabled(void);
extern void medal_corner_scene_stop(void *sVar, s32 dArg);
extern void medal_corner_start_music(void);
