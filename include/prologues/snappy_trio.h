#pragma once

#include "global.h"
#include "engines.h"

#include "games/clappy_trio/graphics/clappy_trio_prologue_graphics.h"


  //  //  //  PROLOGUE: THE SNAPPY TRIO  //  //  //


// Types:
struct SnappyTrioPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *snappy_trio_prologue_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable snappy_trio_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045ee8(void);    // [func_08045ee8] GFX_INIT Func_02
extern void func_08045ef8(void);    // [func_08045ef8] GFX_INIT Func_01
extern void func_08045f28(void);    // [func_08045f28] GFX_INIT Func_00
extern void snappy_trio_prologue_engine_start(u32);     // [func_08045f58] MAIN - Init
extern void func_08045fb4(void);    // [func_08045fb4] ENGINE Func_00   (STUB)
extern void snappy_trio_prologue_engine_update(void);    // [func_08045fb8] MAIN - Update    (STUB)
extern void snappy_trio_prologue_engine_stop(void);    // [func_08045fbc] MAIN - Close     (STUB)
extern void func_08045fc0(u32);     // [func_08045fc0] Event 0 - Set Animation Frame (Text)
