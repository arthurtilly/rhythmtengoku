#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_5/graphics/remix_5_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 5  //  //  //


// Types:
struct Remix5PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_5_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable remix_5_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046a18(void);    // [func_08046a18] GFX_INIT Func_02
extern void func_08046a28(void);    // [func_08046a28] GFX_INIT Func_01
extern void func_08046a58(void);    // [func_08046a58] GFX_INIT Func_00
extern void remix_5_prologue_engine_start(u32);     // [func_08046a88] MAIN - Init
extern void func_08046ae4(void);    // [func_08046ae4] ENGINE Func_00   (STUB)
extern void remix_5_prologue_engine_update(void);    // [func_08046ae8] MAIN - Update    (STUB)
extern void remix_5_prologue_engine_stop(void);    // [func_08046aec] MAIN - Close     (STUB)
extern void func_08046af0(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)
