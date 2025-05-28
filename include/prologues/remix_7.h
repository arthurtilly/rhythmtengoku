#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_7/graphics/remix_7_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 7  //  //  //


// Types:
struct Remix7PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_7_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable remix_7_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046c10(void);    // [func_08046c10] GFX_INIT Func_02
extern void func_08046c20(void);    // [func_08046c20] GFX_INIT Func_01
extern void func_08046c50(void);    // [func_08046c50] GFX_INIT Func_00
extern void remix_7_prologue_engine_start(u32);     // [func_08046c80] MAIN - Init
extern void func_08046cdc(void);    // [func_08046cdc] ENGINE Func_00   (STUB)
extern void remix_7_prologue_engine_update(void);    // [func_08046ce0] MAIN - Update    (STUB)
extern void remix_7_prologue_engine_stop(void);    // [func_08046ce4] MAIN - Close     (STUB)
extern void func_08046ce8(u32);     // [func_08046ce8] Event 0 - Set Animation Frame (Text)
