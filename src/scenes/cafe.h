#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct CafeSceneData {
    u32 scriptIsReady;
    struct TextPrinter *printer;
    s16 textAdvIcon;
    u16 nextDialogueTask;
    u8 textAdvReady;
    u8 disableTextUpdates;
    u8 totalLevelsThisSession;
    u8 unused;
    u8 sessionIndexes[5];
    u16 timeSinceLastVisit;
    u16 totalPlayTime;
    u16 totalActivePlayTime;
    u8 bgEvent;
    u8 textAdvHold;
    u8 queryEnabled;
    s8 queryResult;
    s16 levelToClear;
    const char **dialogue;
    char string[0x800];
};

// [0x030055A0] Play Session
extern struct PlaySessionInfo {
    struct LevelPlayActivity {
        u8 levelID;
        u8 totalStalePlays;
        u8 justGotPerfect;
        u16 timeOfLastPlay;
        u16 activeTimeOfLastPlay;
    } lastPlayedLevels[5];
    u8 totalMedals;
    u8 unused;
    u16 currentFlow;
    u16 timeOfLastCafeVisit;
} gSessionInfo;


// Scene Macros/Enums:
#define END_OF_DIALOGUE NULL


// Scene Data:
extern struct Animation *cafe_cursor_option_anim[];
extern u8 cafe_barista_denied_levels[];
extern struct GraphicsTable cafe_gfx_table[];
extern struct CompressedGraphics *cafe_buffered_textures[];
extern const char **cafe_random_conversation_pool[];
extern const char *cafe_dialogue_first_visit[];
extern const char *cafe_dialogue_come_back_later[];
extern const char *cafe_dialogue_keep_trying[];
extern const char *cafe_dialogue_shouts_praise[];
extern const char *cafe_dialogue_shouts_cheer[];
extern const char *cafe_dialogue_practicing_perfect[];
extern const char *cafe_dialogue_not_practicing_perfect[];
extern const char *cafe_dialogue_all_perfects_clear[];


// Functions:
extern void cafe_init_level_session_playtime(struct LevelPlayActivity *activity);
extern void cafe_init_level_session(struct LevelPlayActivity *activity, s32 levelID);
extern struct LevelPlayActivity *cafe_alloc_level_session(s32 levelID);
extern struct LevelPlayActivity *cafe_get_level_session(s32 levelID);
extern void cafe_init_session_info(void);
extern void cafe_add_level_to_session(s32 levelID);
extern void cafe_remove_level_from_session(s32 levelID);
extern void cafe_add_perfect_level_to_session(s32 levelID);
extern void cafe_remove_old_levels_from_session(u32 totalPlayTime, u32 inactivityThreshold);
extern void cafe_init_session_indexes(void);
extern void cafe_init_session_playtime(void);
extern void cafe_remove_perfect_level_sessions(void);

extern void cafe_init_dialogue(void);
extern void cafe_start_dialogue_inputs(void); // (Script Function)
extern void cafe_update_dialogue_inputs(void);
extern u32 barista_can_clear_level(s32 levelID);
extern void cafe_print_dialogue(void); // (Script Function)
extern s32 cafe_get_bg_event(void); // (Script Function)
extern void cafe_text_printer_show_box(void);
extern void cafe_text_printer_hide_box(void);
extern void cafe_init_text_printer(void);
extern s32 cafe_get_dialogue_hold_time(void); // (Script Function)
extern void cafe_clear_dialogue(void); // (Script Function)

extern void cafe_scene_init_static_var(void); // Init. Static Variables
extern void cafe_scene_init_gfx3(void); // Graphics Init. 3
extern void cafe_scene_init_gfx2(void); // Graphics Init. 2
extern void cafe_scene_init_gfx1(void); // Graphics Init. 1
extern void cafe_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void cafe_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void cafe_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 cafe_scene_script_is_ready(void); // Communicate with Script
extern void cafe_load_bg_event_map(struct CompressedGraphics *map); // (Script Function)
extern void cafe_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
