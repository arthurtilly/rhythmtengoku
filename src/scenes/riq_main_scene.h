#pragma once

#include "global.h"
#include "scenes.h"


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
    struct SequenceData *quitSfx;
};

struct PauseMenu {
    u8 state;
    u8 enabled:1;
    u8 hasBeenUsed:1;
    const struct PauseMenuDefinition *data;
};

extern struct PauseMenu gPauseMenu;


extern const char D_08059668[];
extern char D_089dd908[];
extern FontPalette D_089dd94a[];
extern FontPalette D_089dd962[];


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
extern void func_0801db04(u32 enable); // Enable Pause Menu


struct DebugText {
    struct BitmapFontBG *bgFont;
    u8 unk4;
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
    u8 null24;
    u8 unk25;
    u8 unk26;
    u8 lineColor;
    s8 linePalette;
    u8 unk29;
    u16 baseTile;
    void *tileDest;
    u8 palette;
    u8 unk31;
    u16 unk32; // Keys
};

extern void func_0801db1c(struct DebugText *debugText); // Palette
extern void func_0801db74(struct DebugText *debugText); // Palette
extern struct DebugText *func_0801dbe8(u16 memID, u32 layer, u16 *arg2, u32 tilesetNum, u32 baseTileNum, u32 maxTileRows, u32 arg6, u32 arg7);
extern void func_0801dcb0(struct DebugText *debugText, const char *string); // Print
extern void func_0801dd58(struct DebugText *debugText); // X Offset
extern void func_0801de38(struct DebugText *debugText); // Clear Task
extern void func_0801de6c(struct DebugText *debugText); // Tile/Map
// extern ? func_0801debc(?);
// extern ? func_0801dec0(?);
// extern ? func_0801dec4(?);
// extern ? func_0801decc(?);
// extern ? func_0801ded4(?);

struct SoftResetSceneInfo {
    u8 state;
};

extern void func_0801dedc(void *endParam); // D_089dd97c - Stop
extern void func_0801def4(void *initParam); // D_089dd97c - Start
extern u32 func_0801df1c(void *loopParam); // D_089dd97c - Update
