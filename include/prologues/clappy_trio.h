#pragma once

#include "global.h"
#include "engines.h"

#include "games/clappy_trio/graphics/clappy_trio_prologue_graphics.h"


  //  //  //  PROLOGUE: THE CLAPPY TRIO  //  //  //


// Types:
struct ClappyTrioPrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedGraphics *clappy_trio_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable clappy_trio_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045dec(void);    // [func_08045dec] GFX_INIT Func_02
extern void func_08045dfc(void);    // [func_08045dfc] GFX_INIT Func_01
extern void func_08045e2c(void);    // [func_08045e2c] GFX_INIT Func_00
extern void clappy_trio_prologue_engine_start(u32);     // [func_08045e5c] MAIN - Init
extern void func_08045eb8(void);    // [func_08045eb8] ENGINE Func_00   (STUB)
extern void clappy_trio_prologue_engine_update(void);    // [func_08045ebc] MAIN - Update    (STUB)
extern void clappy_trio_prologue_engine_stop(void);    // [func_08045ec0] MAIN - Close     (STUB)
extern void func_08045ec4(u32);     // [func_08045ec4] Event 0 - Set Animation Frame (Text)
