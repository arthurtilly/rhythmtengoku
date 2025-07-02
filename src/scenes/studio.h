#pragma once

#include "global.h"
#include "scenes.h"
#include "src/scenes/drum_replay.h"
#include "engines/night_walk.h"


// VALUES
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
    /* 44 */ STUDIO_SONG_PERFECT,

    /* -- */ TOTAL_STUDIO_SONGS
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
    /* 14 */ STUDIO_DRUM_SAMURAI,

    /* -- */ TOTAL_STUDIO_DRUMS
};

enum StudioDrummerModesEnum {
    /* 00 */ STUDIO_DRUMMER_MODE_LISTEN,
    /* 01 */ STUDIO_DRUMMER_MODE_RECORD,
    /* 02 */ STUDIO_DRUMMER_MODE_PLAYBACK
};

enum StudioStatesEnum {
    /* 00 */ STUDIO_STATE_NONE,
    /* 01 */ STUDIO_STATE_NAV_SONG_LIST,
    /* 02 */ STUDIO_STATE_NAV_OPTION_LIST,
    /* 03 */ STUDIO_STATE_NAV_DRUM_LIST,
    /* 04 */ STUDIO_STATE_EDIT_VIA_SONG_LIST,
    /* 05 */ STUDIO_STATE_EDIT_VIA_OPTION_LIST,
    /* 06 */ STUDIO_STATE_WARNING_DISPLAY
};

enum StudioWarningOptionsEnum {
    /* 00 */ STUDIO_WARNING_OPT_DISMISS,
    /* 01 */ STUDIO_WARNING_OPT_Y,
    /* 02 */ STUDIO_WARNING_OPT_N
};

enum StudioOptionsEnum {
    /* 00 */ STUDIO_OPTION_LISTEN,
    /* 01 */ STUDIO_OPTION_DRUM,
    /* 02 */ STUDIO_OPTION_SORT,
    /* 03 */ STUDIO_OPTION_MARK,
    /* 01 */ STUDIO_OPTION_DELETE = STUDIO_OPTION_DRUM
};

enum StudioMenusEnum {
    /* 00 */ STUDIO_MENU_SONG_LIST,
    /* 01 */ STUDIO_MENU_OPTION_LIST,
    /* 02 */ STUDIO_MENU_DRUM_LIST
};

enum StudioListEventsEnum {
    /* 00 */ STUDIO_LIST_EV_NONE,
    /* 01 */ STUDIO_LIST_EV_CONFIRM,
    /* 02 */ STUDIO_LIST_EV_SCROLL_UP,
    /* 03 */ STUDIO_LIST_EV_SCROLL_DOWN,
    /* 04 */ STUDIO_LIST_EV_CANCEL,
    /* 05 */ STUDIO_LIST_EV_MOVE_ITEM,
    /* 06 */ STUDIO_LIST_EV_CHECK_ITEM
};


// MACROS
#define gStudio ((struct StudioSceneData *)gCurrentSceneData)


// TYPES
struct StudioSceneData {
    /* [0x000] Empty (probably unused Bitmap Fonts) */
    u32 null0;
    u32 null4;

    /* [0x008] DrumTech Controller */
    struct DrumTechController drumTech;

    /* [0x358] Scene */
    u32 inputsEnabled;
    u8 sceneState;
    struct Listbox *songList;
    u8 songListState;
    struct Listbox *drumList;
    u8 drumListState;
    struct Listbox *optionList;
    u8 optionListState;

    /* [0x376] Scene Panning */
    s16 panStartX;
    s16 panTargetX;
    u16 panProgress;
    u8 currentMenu;

    /* [0x380] List Targets */
    u32 unused380;
    u16 unused384;
    u32 unused388;
    char string[0x100];
    s16 itemMoveHighlight;
    s16 selectedItem;

    /* [0x490] Replay & Script */
    struct DrumReplaySaveGraph *replayMemoryGraph;
    void *replaySeq;
    u8 replayDrumKit;
    const struct Beatscript *drumScript;

    /* [0x4A0] Warning Notice */
    u8 warningIsActive;
    u8 warningIsRendering;
    u8 warningOption;
    void (*warningEvent)(s32 event, s32 arg);
    s32 warningEventArg;
    struct SongHeader *warningSfx;
    s16 warningAdvIcon;
    struct TextPrinter *warningPrinter;

    /* [0x4B8] Music Player */
    struct SoundPlayer *musicPlayer;
};

struct StudioEntry {
    const char *fullTitle;
    const char *shortTitle;
    const struct Beatscript *script;
};


// DATA
extern struct StudioEntry studio_song_table[];
extern const char *studio_drum_kit_names[];
extern const char *studio_mem_warnings_text[];
extern const char **studio_options_text[];
extern u8 studio_total_options[];
extern struct GraphicsTable studio_gfx_table[];
extern struct CompressedData *studio_buffered_textures[];
extern u16 studio_menu_x_ofs[];
extern u8 studio_menu_unused_table[];
extern struct Beatscript script_scene_studio_idle[];
extern struct Beatscript script_scene_studio_start_song[];
extern struct Beatscript script_scene_studio_exit[];
extern struct Scene scene_studio;


// FUNCTIONS
extern void studio_warning_show(void);
extern void studio_warning_init(void);
extern void studio_warning_update(void);
extern void studio_warning_create(u32 options, const char *dialogue, void eventFunc(s32, s32), s32 eventArg, struct SongHeader *sfx);
extern void studio_warning_remove(void);

extern void unlock_default_studio_songs(void);
extern s32  save_studio_song(s32 song, s32 replay, s32 drumKit, s32 flags);
extern void swap_studio_songs(s32 id1, s32 id2);
extern void move_studio_song(s32 id, s32 newIndex);
extern void delete_studio_song(s32 id);
extern const char *studio_song_list_get_string(s32 line);
extern s16  studio_song_list_get_sprite(s32 line);
extern void studio_song_list_on_scroll(s32 arg, u32 current, u32 previous);
extern void studio_song_list_init(s32 state, s32 selItem, s32 selLine);
extern void studio_song_list_update(void);
extern void studio_song_list_select_item(s32 id);
extern void studio_song_list_move_item(s32 prevIndex, s32 newIndex);
extern void studio_song_list_update_w_selection(void);

extern const char *studio_drum_list_get_string(s32 line);
extern void studio_drum_list_on_scroll(s32 arg, u32 current, u32 previous);
extern void studio_drum_list_init(s32 state, s32 selItem, s32 selLine);
extern void studio_drum_list_exit_to_drumming(void);
extern void studio_drum_list_warning_memory_result(s32 event, s32 arg);
extern void studio_drum_list_update(void);

extern const char *studio_option_list_get_string(s32 line);
extern void studio_option_list_on_scroll(s32 arg, u32 current, u32 previous);
extern void studio_option_list_init(s32 state, s32 selItem);
extern s32  studio_option_list_no_checked_songs(void);
extern void studio_option_list_exit_to_listening(void);
extern void studio_option_list_warning_no_checks_result(s32 event, s32 arg);
extern void studio_option_list_warning_unchecked_result(s32 event, s32 arg);
extern void studio_option_list_warning_deletion_result(s32 event, s32 arg);
extern void studio_option_list_update(void);
extern void studio_option_list_update_w_selection(void);

extern void studio_scene_init_memory(void);
extern void studio_scene_init_gfx4(void);
extern void studio_scene_init_gfx3(void);
extern void studio_scene_init_gfx2(void);
extern void studio_scene_init_gfx1(void);
extern void studio_scene_start(void *sVar, s32 dArg);
extern s32  studio_get_current_kit(void);
extern void studio_set_current_kit(s32 id);
extern void studio_set_current_song(s32 id, s32 line);
extern void studio_remember_list_positions(void);
extern void studio_scene_paused(void *sVar, s32 dArg);
extern void studio_scene_update_panning(void);
extern void studio_scene_set_current_menu(u32 menu);
extern void studio_scene_pan_to_menu(u32 menu);
extern void studio_scene_play_music(s32 item);
extern void studio_scene_clear_music(void);
extern void studio_scene_update_stub(void);
extern void studio_scene_update(void *sVar, s32 dArg);
extern u32  studio_scene_inputs_enabled(void);
extern void studio_scene_stop(void *sVar, s32 dArg);

extern const struct Beatscript *get_studio_mus_script(void);
extern void fade_out_studio_mus(void);
extern void set_studio_drummer_mode(u32 mode);
extern void mute_studio_mus_tracks(u32 tracks);
extern void play_studio_mus_count_in(void);
extern u32  get_studio_drummer_mode(void);
extern void start_studio_mus_remix2(void);
extern void start_studio_mus_remix7_end(void);
extern void slow_studio_mus_remix7_end(void);
extern void stop_studio_mus_remix7_end(void);
