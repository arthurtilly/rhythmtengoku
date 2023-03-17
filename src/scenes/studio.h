#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct StudioSceneInfo {
    /* add fields here */
};

struct StudioEntry {
    const char *fullTitle;
    const char *shortTitle;
    const struct Beatscript *script;
};


// Scene Macros/Enums:
enum StudioSongsEnum {
    STUDIO_SONG_SILENCE,
    STUDIO_SONG_KARATE_MAN,
    STUDIO_SONG_CLAPPY_TRIO,
    STUDIO_SONG_TAP_TRIAL,
    STUDIO_SONG_SPACE_DANCE,
    STUDIO_SONG_HONEY_SWEET_ANGEL,
    STUDIO_SONG_WISH,
    STUDIO_SONG_NIGHT_WALK,
    STUDIO_SONG_BON_ODORI,
    STUDIO_SONG_BON_DANCE,
    STUDIO_SONG_COSMIC_DANCE,
    STUDIO_SONG_RHYTHM_TWEEZERS,
    STUDIO_SONG_SNAPPY_TRIO,
    STUDIO_SONG_TAP_TRIAL_2,
    STUDIO_SONG_WIZARDS_WALTZ,
    STUDIO_SONG_MARCHING_ORDERS,
    STUDIO_SONG_SPACEBALL,
    STUDIO_SONG_SNEAKY_SPIRITS,
    STUDIO_SONG_SAMURAI_SLICE,
    STUDIO_SONG_RAT_RACE,
    STUDIO_SONG_SICK_BEATS,
    STUDIO_SONG_SHOWTIME,
    STUDIO_SONG_BUNNY_HOP,
    STUDIO_SONG_TRAM_PAULINE,
    STUDIO_SONG_QUIZ_SHOW,
    STUDIO_SONG_POWER_CALLIGRAPHY,
    STUDIO_SONG_POLYRHYTHM,
    STUDIO_SONG_BOUNCY_ROAD,
    STUDIO_SONG_TOSS_BOYS,
    STUDIO_SONG_FIREWORKS,
    STUDIO_SONG_REMIX7,
    STUDIO_SONG_REMIX8,
    STUDIO_SONG_REMIX6,
    STUDIO_SONG_TITLE,
    STUDIO_SONG_MAIN_MENU,
    STUDIO_SONG_GAME_SELECT_1,
    STUDIO_SONG_DATA_ROOM,
    STUDIO_SONG_OPENING,
    STUDIO_SONG_STAFF_CREDIT,
    STUDIO_SONG_GAME_SELECT_2,
    STUDIO_SONG_CAFE,
    STUDIO_SONG_TRY_AGAIN,
    STUDIO_SONG_OK,
    STUDIO_SONG_SUPERB,
    STUDIO_SONG_PERFECT
};


// Sound Effects:


// Scene Data:
extern const char text_studio_song_formatting[];
extern struct StudioEntry studio_song_table[];
extern const char *studio_drum_kit_names[];
extern const char text_studio_kit_default[];
extern const char text_studio_kit_formatting[];
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
