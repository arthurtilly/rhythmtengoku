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
typedef u32 (*PauseMenuUpdateFunc)(void);

struct PauseMenuDefinition {
    u16 pauseButton;
    PauseMenuInitFunc onPause;
    PauseMenuUpdateFunc update;
    const struct SequenceData *quitSfx;
};

struct PauseMenu {
    u8 state;
    u8 enabled:1;
    u8 hasBeenUsed:1;
    const struct PauseMenuDefinition *data;
};

extern struct PauseMenu gPauseMenu;



extern void func_0801d860(u32); // [func_0801d860] Set D_0300155c
extern void func_0801d86c(const struct SubScene *); // [func_0801d86c] Script Init.
extern u32  func_0801d8d8(void); // [func_0801d8d8] Script Main
extern void func_0801d95c(const struct BeatScript *); // [func_0801d95c] Change Script
extern void func_0801d968(const struct BeatScript *); // [func_0801d968] Change Script (w/ Timer Reset)
extern void func_0801d978(void); // [func_0801d978] Reset BranchStack Position
extern void func_0801d98c(void); // [func_0801d98c] Script Close
extern u32  func_0801d9cc(void);

extern u32  func_0801d9d0(void); // [func_0801d9d0] Update Pause Menu (State: Play)
extern void func_0801da48(void); // [func_0801da48] Update Pause Menu (State: Pause)
extern u32  func_0801dabc(void); // [func_0801dabc] Update Pause Menu (State: Stop)
extern void func_0801daf8(const struct PauseMenuDefinition *data); // [func_0801daf8] Set Pause Handler Definition
extern void func_0801db04(u32 enable); // [func_0801db04] Enable Pause Menu

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
// extern ? func_0801dedc(?); // D_089dd97c - Close
// extern ? func_0801def4(?); // D_089dd97c - Init.
// extern ? func_0801df1c(?); // D_089dd97c - Update
