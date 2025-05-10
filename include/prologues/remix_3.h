#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_3/graphics/remix_3_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 3  //  //  //


// Types:
struct Remix3PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_3_prologue_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable remix_3_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046820(void);    // [func_08046820] GFX_INIT Func_02
extern void func_08046830(void);    // [func_08046830] GFX_INIT Func_01
extern void func_08046860(void);    // [func_08046860] GFX_INIT Func_00
extern void remix_3_prologue_engine_start(u32);     // [func_08046890] MAIN - Init
extern void func_080468ec(void);    // [func_080468ec] ENGINE Func_00   (STUB)
extern void remix_3_prologue_engine_update(void);    // [func_080468f0] MAIN - Update    (STUB)
extern void remix_3_prologue_engine_stop(void);    // [func_080468f4] MAIN - Close     (STUB)
extern void func_080468f8(u32);     // [func_080468f8] Event 0 - Set Animation Frame (Text)
