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

// extern ? func_0801db1c(?);
// extern ? func_0801db74(?);
// extern ? func_0801dbe8(?);
// extern ? func_0801dcb0(?);
// extern ? func_0801dd58(?);
// extern ? func_0801de38(?);
// extern ? func_0801de6c(?);
// extern ? func_0801debc(?);
// extern ? func_0801dec0(?);
// extern ? func_0801dec4(?);
// extern ? func_0801decc(?);
// extern ? func_0801ded4(?);
// extern ? func_0801dedc(?); // D_089dd97c - Stop
// extern ? func_0801def4(?); // D_089dd97c - Start
// extern ? func_0801df1c(?); // D_089dd97c - Update
