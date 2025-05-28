#pragma once

#include "global.h"
#include "engines.h"

#include "games/fireworks/graphics/fireworks_prologue_graphics.h"


  //  //  //  PROLOGUE: FIREWORKS  //  //  //


// Types:
struct FireworksPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *fireworks_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable fireworks_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045cf0(void);    // [func_08045cf0] GFX_INIT Func_02
extern void func_08045d00(void);    // [func_08045d00] GFX_INIT Func_01
extern void func_08045d30(void);    // [func_08045d30] GFX_INIT Func_00
extern void fireworks_prologue_engine_start(u32);     // [func_08045d60] MAIN - Init
extern void func_08045dbc(void);    // [func_08045dbc] ENGINE Func_00   (STUB)
extern void fireworks_prologue_engine_update(void);    // [func_08045dc0] MAIN - Update    (STUB)
extern void fireworks_prologue_engine_stop(void);    // [func_08045dc4] MAIN - Close     (STUB)
extern void func_08045dc8(u32);     // [func_08045dc8] Event 0 - Set Animation Frame (Text)
