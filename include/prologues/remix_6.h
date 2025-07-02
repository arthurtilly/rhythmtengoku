#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_6/graphics/remix_6_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 6  //  //  //


// Types:
struct Remix6PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_6_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable remix_6_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046b14(void);    // [func_08046b14] GFX_INIT Func_02
extern void func_08046b24(void);    // [func_08046b24] GFX_INIT Func_01
extern void func_08046b54(void);    // [func_08046b54] GFX_INIT Func_00
extern void remix_6_prologue_engine_start(u32);     // [func_08046b84] MAIN - Init
extern void func_08046be0(void);    // [func_08046be0] ENGINE Func_00   (STUB)
extern void remix_6_prologue_engine_update(void);    // [func_08046be4] MAIN - Update    (STUB)
extern void remix_6_prologue_engine_stop(void);    // [func_08046be8] MAIN - Close     (STUB)
extern void func_08046bec(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)
