#pragma once

#include "global.h"
#include "scenes.h"

// Types:
enum PauseHandlerState {
    PAUSE_STATE_PLAY,
    PAUSE_STATE_PAUSE,
    PAUSE_STATE_STOP
};

enum PauseMenuSelectedOption {
    PAUSE_MENU_SELECTION_PENDING,
    PAUSE_MENU_SELECTION_CONTINUE,
    PAUSE_MENU_SELECTION_QUIT
};

typedef void (*PauseMenuInitFunc)(void);
typedef s32 (*PauseMenuUpdateFunc)(void);

struct PauseMenuDefinition {
    u16 pauseButton;
    PauseMenuInitFunc onPause;
    PauseMenuUpdateFunc update;
    struct SongHeader *quitSfx;
};

struct PauseMenu {
    u8 state;
    u8 enabled:1;
    u8 hasBeenUsed:1;
    const struct PauseMenuDefinition *data;
};


// Static Variables:
extern struct PauseMenu gPauseMenu;


// Functions:
extern void func_0801d860(u32); // Set D_0300155c
extern void func_0801d86c(const struct SubScene *); // Start Tengoku Scene
extern u32  func_0801d8d8(void); // Update Tengoku Scene
extern void func_0801d95c(const struct Beatscript *); // Change Script
extern void func_0801d968(const struct Beatscript *); // Change Script (w/ Timer Reset)
extern void func_0801d978(void); // Reset BranchStack Position
extern void func_0801d98c(void); // Stop Tengoku Scene
extern u32  func_0801d9cc(void);
extern u32  func_0801d9d0(void); // Update Pause Menu (State: Play)
extern void func_0801da48(void); // Update Pause Menu (State: Pause)
extern u32  func_0801dabc(void); // Update Pause Menu (State: Stop)
extern void func_0801daf8(const struct PauseMenuDefinition *data); // Set Pause Handler Definition
extern void pause_menu_enabled(u32 enable); // Enable Pause Menu


// Types (Debug Text):
struct DebugText {
    struct BitmapFontBG *bgFont;
    u8 isPrinted;
    char *string; // 0x400
    u8 bgLayer;
    u8 unkD;
    u16 *cursorMap;
    u16 *textMap; // 0x1000 / 2
    u16 totalChars;
    s16 xOffset;
    u16 unk1C;
    u16 unk1E;
    s32 printerTask;
    u8 fontCol1;
    s8 fontPal1;
    u8 fontPal2Enabled;
    u8 fontCol2;
    s8 fontPal2;
    u8 tilesetIsOutdated;
    u16 baseTile;
    void *tileset;
    u8 palette;
    u8 reachedEndOfString;
    u16 scrollKeys; // Keys
};


// Functions (Debug Text):
extern void dev_text_update_pal1(struct DebugText *debugText);
extern void dev_text_update_pal2(struct DebugText *debugText);
extern struct DebugText *create_new_dev_text(u16 memID, u32 layer, u16 *arg2, u32 tilesetNum, u32 baseTileNum, u32 maxTileRows, u32 palette, u32 fontPal1);
extern void dev_text_print(struct DebugText *debugText, const char *string);
extern void update_dev_text(struct DebugText *debugText);
extern void dev_text_reset_print(struct DebugText *debugText);
extern void dev_text_reset_tiles(struct DebugText *debugText);
extern void dev_text_set_scroll_keys(struct DebugText *debugText, u16 keys);
extern void dev_text_set_exhausted_string_behaviour(struct DebugText *debugText, u32 arg);
extern u32 dev_text_has_exhausted_string(struct DebugText *debugText);
extern void dev_text_set_font_pal_2(struct DebugText *debugText, u32 palette);
extern void dev_text_set_enable_font_pal_2(struct DebugText *debugText, u32 enable);


// Types (Soft Reset):
struct SoftResetSceneData {
    u8 state;
};


// Functions (Soft Reset):
extern void soft_reset_scene_stop(void *endParam);
extern void soft_reset_scene_start(void *initParam);
extern u32 soft_reset_scene_update(void *loopParam);
