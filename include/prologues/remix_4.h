#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_4/graphics/remix_4_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 4  //  //  //


// Types:
struct Remix4PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_4_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable remix_4_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_0804691c(void);    // [func_0804691c] GFX_INIT Func_02
extern void func_0804692c(void);    // [func_0804692c] GFX_INIT Func_01
extern void func_0804695c(void);    // [func_0804695c] GFX_INIT Func_00
extern void remix_4_prologue_engine_start(u32);     // [func_0804698c] MAIN - Init
extern void func_080469e8(void);    // [func_080469e8] ENGINE Func_00   (STUB)
extern void remix_4_prologue_engine_update(void);    // [func_080469ec] MAIN - Update    (STUB)
extern void remix_4_prologue_engine_stop(void);    // [func_080469f0] MAIN - Close     (STUB)
extern void func_080469f4(u32);     // [func_080469f4] Event 0 - Set Animation Frame (Text)
