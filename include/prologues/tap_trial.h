#pragma once

#include "global.h"
#include "engines.h"

#include "games/tap_trial/graphics/tap_trial_prologue_graphics.h"


  //  //  //  PROLOGUE: TAP TRIAL  //  //  //


// Types:
struct TapTrialPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *tap_trial_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable tap_trial_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08047678(void);    // [func_08047678] GFX_INIT Func_02
extern void func_08047688(void);    // [func_08047688] GFX_INIT Func_01
extern void func_080476b8(void);    // [func_080476b8] GFX_INIT Func_00
extern void tap_trial_prologue_engine_start(u32);     // [func_080476e8] MAIN - Init
extern void func_08047764(void);    // [func_08047764] ENGINE Func_00   (STUB)
extern void tap_trial_prologue_engine_update(void);    // [func_08047768] MAIN - Update    (STUB)
extern void tap_trial_prologue_engine_stop(void);    // [func_0804776c] MAIN - Close     (STUB)
extern void func_08047770(u32);     // [func_08047770] Event 0 - Set Animation Frame (Text)
extern void func_08047794(void);    // [func_08047794] Event 1 - Animate Text
