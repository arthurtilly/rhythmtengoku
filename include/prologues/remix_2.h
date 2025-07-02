#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_2/graphics/remix_2_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 2  //  //  //


// Types:
struct Remix2PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_2_prologue_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable remix_2_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046724(void);    // [func_08046724] GFX_INIT Func_02
extern void func_08046734(void);    // [func_08046734] GFX_INIT Func_01
extern void func_08046764(void);    // [func_08046764] GFX_INIT Func_00
extern void remix_2_prologue_engine_start(u32);     // [func_08046794] MAIN - Init
extern void func_080467f0(void);    // [func_080467f0] ENGINE Func_00   (STUB)
extern void remix_2_prologue_engine_update(void);    // [func_080467f4] MAIN - Update    (STUB)
extern void remix_2_prologue_engine_stop(void);    // [func_080467f8] MAIN - Close     (STUB)
extern void func_080467fc(u32);     // [func_080467fc] Event 0 - Set Animation Frame (Text)
