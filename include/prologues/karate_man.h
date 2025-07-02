#pragma once

#include "global.h"
#include "engines.h"

#include "games/karate_man/graphics/karate_man_prologue_graphics.h"


  //  //  //  PROLOGUE: KARATE MAN  //  //  //


// Types:
struct KarateManPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
    s16 kickSprite; // Sprite: Kick
};

// Assets:
extern struct CompressedData *karate_man_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable karate_man_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_0804550c(void);    // [func_0804550c] GFX_INIT Func_02
extern void func_0804551c(void);    // [func_0804551c] GFX_INIT Func_01
extern void func_0804554c(void);    // [func_0804554c] GFX_INIT Func_00
extern void karate_man_prologue_engine_start(u32);     // [func_0804557c] MAIN - Init
extern void func_080455f8(void);    // [func_080455f8] ENGINE Func_00   (STUB)
extern void karate_man_prologue_engine_update(void);    // [func_080455fc] MAIN - Update    (STUB)
extern void karate_man_prologue_engine_stop(void);    // [func_08045600] MAIN - Close     (STUB)
extern void func_08045604(u32);     // [func_08045604] Event 0 - Set Animation Frame (Text)
extern void func_08045628(void);    // [func_08045628] Event 1 - Play Animation (Kick)
