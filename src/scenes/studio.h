#pragma once

#include "global.h"
#include "scenes.h"
#include "src/scenes/drum_replay.h"
#include "engines/night_walk.h"

// Scene Types:
struct StudioSceneInfo {
    /* 0x000 */
    u32 null0;
    u32 null4;
    struct DrumTechController drumTech;
    /* 0x358 */
    u32 scriptIsReady;
    u8 menuState;
    struct Listbox *songsList;
    u8 unk364;
    struct Listbox *drumsList;
    u8 unk36C;
    struct Listbox *optionsList;
    u8 unk374;
    u32 null378;
    u32 null37C;
    /* 0x380 */
    u32 unk380;
    u16 unk384;
    u32 unk388;
    char string[0x100];
    /* 0x48C */
    s16 itemMoveHighlight;
    s16 selectedItem;
    struct DrumReplaySaveGraph *replayMemoryGraph;
    void *replaySeq;
    u8 replayDrumKit;
    u32 null49C;
    /* 0x4A0 */
    u8 warningIsActive;
    u8 warningIsRendering;
    u8 warningOption;
    void (*warningEvent)(s32 event, s32 arg);
    s32 warningEventArg;
    struct SequenceData *warningSfx;
    s16 warningAdvIcon;
    struct TextPrinter *warningPrinter;
    struct SoundPlayer *musicPlayer;
};

struct StudioEntry {
    const char *fullTitle;
    const char *shortTitle;
    const struct Beatscript *script;
};


// Scene Macros/Enums:
enum StudioSongsEnum {
    /* -- */ STUDIO_SONG_NULL = -1,
    /* 00 */ STUDIO_SONG_SILENCE,
    /* 01 */ STUDIO_SONG_KARATE_MAN,
    /* 02 */ STUDIO_SONG_CLAPPY_TRIO,
    /* 03 */ STUDIO_SONG_TAP_TRIAL,
    /* 04 */ STUDIO_SONG_SPACE_DANCE,
    /* 05 */ STUDIO_SONG_HONEY_SWEET_ANGEL,
    /* 06 */ STUDIO_SONG_WISH,
    /* 07 */ STUDIO_SONG_NIGHT_WALK,
    /* 08 */ STUDIO_SONG_BON_ODORI,
    /* 09 */ STUDIO_SONG_BON_DANCE,
    /* 10 */ STUDIO_SONG_COSMIC_DANCE,
    /* 11 */ STUDIO_SONG_RHYTHM_TWEEZERS,
    /* 12 */ STUDIO_SONG_SNAPPY_TRIO,
    /* 13 */ STUDIO_SONG_TAP_TRIAL_2,
    /* 14 */ STUDIO_SONG_WIZARDS_WALTZ,
    /* 15 */ STUDIO_SONG_MARCHING_ORDERS,
    /* 16 */ STUDIO_SONG_SPACEBALL,
    /* 17 */ STUDIO_SONG_SNEAKY_SPIRITS,
    /* 18 */ STUDIO_SONG_SAMURAI_SLICE,
    /* 19 */ STUDIO_SONG_RAT_RACE,
    /* 20 */ STUDIO_SONG_SICK_BEATS,
    /* 21 */ STUDIO_SONG_SHOWTIME,
    /* 22 */ STUDIO_SONG_BUNNY_HOP,
    /* 23 */ STUDIO_SONG_TRAM_PAULINE,
    /* 24 */ STUDIO_SONG_QUIZ_SHOW,
    /* 25 */ STUDIO_SONG_POWER_CALLIGRAPHY,
    /* 26 */ STUDIO_SONG_POLYRHYTHM,
    /* 27 */ STUDIO_SONG_BOUNCY_ROAD,
    /* 28 */ STUDIO_SONG_TOSS_BOYS,
    /* 29 */ STUDIO_SONG_FIREWORKS,
    /* 30 */ STUDIO_SONG_REMIX7,
    /* 31 */ STUDIO_SONG_REMIX8,
    /* 32 */ STUDIO_SONG_REMIX6,
    /* 33 */ STUDIO_SONG_TITLE,
    /* 34 */ STUDIO_SONG_MAIN_MENU,
    /* 35 */ STUDIO_SONG_GAME_SELECT_1,
    /* 36 */ STUDIO_SONG_DATA_ROOM,
    /* 37 */ STUDIO_SONG_OPENING,
    /* 38 */ STUDIO_SONG_STAFF_CREDIT,
    /* 39 */ STUDIO_SONG_GAME_SELECT_2,
    /* 40 */ STUDIO_SONG_CAFE,
    /* 41 */ STUDIO_SONG_TRY_AGAIN,
    /* 42 */ STUDIO_SONG_OK,
    /* 43 */ STUDIO_SONG_SUPERB,
    /* 44 */ STUDIO_SONG_PERFECT
};

enum StudioDrumKitsEnum {
    /* 00 */ STUDIO_DRUM_STANDARD,
    /* 01 */ STUDIO_DRUM_DRY,
    /* 02 */ STUDIO_DRUM_POWER,
    /* 03 */ STUDIO_DRUM_TECHNO,
    /* 04 */ STUDIO_DRUM_MATTE,
    /* 05 */ STUDIO_DRUM_ASIAN,
    /* 06 */ STUDIO_DRUM_LIGHT,
    /* 07 */ STUDIO_DRUM_HEAVY,
    /* 08 */ STUDIO_DRUM_HIHAT,
    /* 09 */ STUDIO_DRUM_HEEL_TECH_1,
    /* 10 */ STUDIO_DRUM_HEEL_TECH_2,
    /* 11 */ STUDIO_DRUM_SFX,
    /* 12 */ STUDIO_DRUM_TAP,
    /* 13 */ STUDIO_DRUM_AIR,
    /* 14 */ STUDIO_DRUM_SAMURAI
};


// Sound Effects:
extern struct SequenceData s_studio_bgm_seqData;
extern struct SequenceData s_menu_kettei2_seqData;
extern struct SequenceData s_menu_cancel3_seqData;
extern struct SequenceData s_menu_error_seqData;
extern struct SequenceData s_menu_cursor1_seqData;
extern struct SequenceData s_menu_se24_seqData;
extern struct SequenceData s_menu_se13_seqData;


// Scene Data:
extern const char text_studio_song_pad_14px[];
extern struct StudioEntry studio_song_table[];
extern const char *studio_drum_kit_names[];
extern const char text_studio_kit_default[];
extern const char text_studio_kit_pad_8px[];
extern const char text_studio_kit_not_unlocked[];
extern const char *studio_mem_warnings_text[];
extern const char **studio_options_text[];
extern const char text_studio_option_default[];
extern const char text_studio_warning_no_checks1[];
extern const char text_studio_warning_no_checks2[];
extern const char text_studio_warning_delete[];
extern u8 D_089d8444[];
extern struct GraphicsTable studio_gfx_table[];
extern struct CompressedGraphics *studio_buffered_textures[];
extern u16 D_089d84a0[];
extern u8 D_089d84a6[];
extern struct BeatScript script_scene_studio_exit[];
extern struct Scene scene_studio;


// Functions:
extern void studio_warning_show(void);
extern void studio_warning_init(void);
extern void studio_warning_update(void);
extern void studio_warning_create(u32 options, const char *dialogue, void eventFunc(s32, s32), s32 eventArg, struct SequenceData *sfx);
extern void studio_warning_remove(void);

extern void unlock_default_studio_songs(void);
extern s32 save_studio_song(s32 song, s32 replay, s32 drumKit, s32 flags);
extern void swap_studio_songs(s32 id1, s32 id2);
extern void move_studio_song(s32 id, s32 newIndex);
extern void delete_studio_song(s32 id);

extern const char *studio_song_list_get_string(s32 line);
extern s16 studio_song_list_get_sprite(s32 line);
extern void studio_song_list_on_scroll(s32 arg, u32 current, u32 previous);
extern void studio_song_list_init(s32 arg, s32 index, s32 position);
extern void studio_song_list_update(void);
extern void studio_song_list_select_item(s32 id);
extern void studio_song_list_move_item(s32 prevIndex, s32 newIndex);
extern void studio_song_list_update_w_selection(void);

extern const char *studio_drum_list_get_string(s32 line);
extern void studio_drum_list_on_scroll(s32 arg, u32 current, u32 previous);
extern void studio_drum_list_init(s32 arg, s32 index, s32 position);
extern void studio_drum_list_exit_to_drumming(void);
extern void studio_drum_list_warning_memory_result(s32 event, s32 arg);
extern void studio_drum_list_update(void);

extern const char *studio_option_list_get_string(s32 line);
extern void studio_option_list_on_scroll(s32 arg, u32 current, u32 previous);
extern void studio_option_list_init(s32 arg, s32 index);
extern s32 studio_option_list_no_checked_songs(void);
extern void studio_option_list_exit_to_listening(void);
extern void studio_option_list_warning_no_checks_result(s32 event, s32 arg);
extern void studio_option_list_warning_unchecked_result(s32 event, s32 arg);
extern void studio_option_list_warning_deletion_result(s32 event, s32 arg);
extern void studio_option_list_update(void);
extern void studio_option_list_update_w_selection(void);

extern void studio_scene_init_static_var(void); // Init. Static Variables
extern void studio_scene_init_gfx4(void); // Graphics Init. 4
extern void studio_scene_init_gfx3(void); // Graphics Init. 3
extern void studio_scene_init_gfx2(void); // Graphics Init. 2
extern void studio_scene_init_gfx1(void); // Graphics Init. 1
extern void studio_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern s32 studio_get_current_kit(void);
extern void studio_set_current_kit(s32 id);
extern void studio_set_current_song(s32 id, s32 line);
// extern ? func_0801c530(?);
extern void studio_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
// extern ? func_0801c5a4(?);
// extern ? func_0801c674(?);
// extern ? func_0801c6b8(?);
// extern ? func_0801c6fc(?);
// extern ? func_0801c7c0(?);
extern void func_0801c7e8(void);
extern void studio_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 studio_scene_can_receive_inputs(void); // Communicate with Script
extern void studio_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
// extern ? func_0801c930(?); // ? (Script Function)
// extern ? func_0801c944(?); // ? (Script Function)
// extern ? func_0801c960(?);
// extern ? func_0801c96c(?);
// extern ? func_0801c99c(?); // Play Count-In Click
// extern ? func_0801c9b8(?);
// extern ? func_0801c9c4(?);
// extern ? func_0801c9ec(?);
// extern ? func_0801ca08(?);
// extern ? func_0801ca20(?);
