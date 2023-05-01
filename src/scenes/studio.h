#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct StudioSceneData {
    /* add fields here */
};

struct StudioEntry {
    const char *fullTitle;
    const char *shortTitle;
    const struct Beatscript *script;
};


// Scene Macros/Enums:
enum StudioSongsEnum {
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


// Functions:
// extern ? func_0801a9c8(?); // ?
// extern ? func_0801aa04(?);
// extern ? func_0801aaa0(?);
// extern ? func_0801ac38(?);
// extern ? func_0801ad44(?);
// extern ? func_0801ad9c(?); // ? (called when resetting global save data)
// extern ? func_0801adf0(?);
// extern ? func_0801ae34(?);
// extern ? func_0801aea4(?);
// extern ? func_0801aed0(?);
// extern ? func_0801af64(?);
// extern ? func_0801aff8(?);
// extern ? func_0801b0b0(?);
// extern ? func_0801b138(?);
// extern ? func_0801b1d8(?);
// extern ? func_0801b498(?);
// extern ? func_0801b4b4(?);
// extern ? func_0801b4f4(?);
// extern ? func_0801b668(?);
// extern ? func_0801b6fc(?);
// extern ? func_0801b710(?);
// extern ? func_0801b7b8(?);
// extern ? func_0801b834(?);
// extern ? func_0801b858(?);
// extern ? func_0801b9ec(?);
// extern ? func_0801ba60(?);
// extern ? func_0801ba74(?);
// extern ? func_0801bb24(?);
// extern ? func_0801bb60(?);
// extern ? func_0801bbd4(?);
// extern ? func_0801bbe8(?);
// extern ? func_0801bc0c(?);
// extern ? func_0801bce0(?);
// extern ? func_0801c028(?);
// extern ? func_0801c1b8(?); // Init. Static Variables
// extern ? func_0801c1ec(?); // Graphics Init. 4
// extern ? func_0801c234(?); // Graphics Init. 3
// extern ? func_0801c260(?); // Graphics Init. 2
// extern ? func_0801c290(?); // Graphics Init. 1
// extern ? func_0801c2ec(?); // Scene Start
// extern ? func_0801c504(?); // Get Selected Drum Kit
// extern ? func_0801c510(?);
// extern ? func_0801c51c(?);
// extern ? func_0801c530(?);
// extern ? func_0801c5a0(?); // Scene Update (Paused)
// extern ? func_0801c5a4(?);
// extern ? func_0801c674(?);
// extern ? func_0801c6b8(?);
// extern ? func_0801c6fc(?);
// extern ? func_0801c7c0(?);
// extern ? func_0801c7e8(?);
// extern ? func_0801c7ec(?); // Scene Update (Active)
// extern ? func_0801c8b8(?);
// extern ? func_0801c918(?); // Scene Stop
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
