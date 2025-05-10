#pragma once

#include "global.h"
#include "engines.h"

#include "games/remix_1/graphics/remix_1_prologue_graphics.h"


  //  //  //  PROLOGUE: REMIX 1  //  //  //


// Types:
struct Remix1PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *remix_1_prologue_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable remix_1_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046628(void);    // [func_08046628] GFX_INIT Func_02
extern void func_08046638(void);    // [func_08046638] GFX_INIT Func_01
extern void func_08046668(void);    // [func_08046668] GFX_INIT Func_00
extern void remix_1_prologue_engine_start(u32);     // [func_08046698] MAIN - Init
extern void func_080466f4(void);    // [func_080466f4] ENGINE Func_00   (STUB)
extern void remix_1_prologue_engine_update(void);    // [func_080466f8] MAIN - Update    (STUB)
extern void remix_1_prologue_engine_stop(void);    // [func_080466fc] MAIN - Close     (STUB)
extern void func_08046700(u32);     // [func_08046700] Event 0 - Set Animation Frame (Text)
