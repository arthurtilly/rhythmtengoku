#pragma once

#include "global.h"
#include "engines.h"

#include "games/wizards_waltz/graphics/wizards_waltz_prologue_graphics.h"


  //  //  //  PROLOGUE: WIZARD'S WALTZ  //  //  //


// Types:
struct WizardsWaltzPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *wizards_waltz_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable wizards_waltz_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08047d4c(void);    // [func_08047d4c] GFX_INIT Func_02
extern void func_08047d5c(void);    // [func_08047d5c] GFX_INIT Func_01
extern void func_08047d8c(void);    // [func_08047d8c] GFX_INIT Func_00
extern void wizards_waltz_prologue_engine_start(u32);     // [func_08047dbc] MAIN - Init
extern void func_08047e18(void);    // [func_08047e18] ENGINE Func_00   (STUB)
extern void wizards_waltz_prologue_engine_update(void);    // [func_08047e1c] MAIN - Update    (STUB)
extern void wizards_waltz_prologue_engine_stop(void);    // [func_08047e20] MAIN - Close     (STUB)
extern void func_08047e24(void);    // [func_08047e24] Event 0 - Play Animation (Text)
