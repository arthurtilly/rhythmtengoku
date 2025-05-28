#pragma once

#include "global.h"
#include "engines.h"

#include "games/samurai_slice/graphics/samurai_slice_prologue_graphics.h"


  //  //  //  PROLOGUE: SAMURAI SLICE  //  //  //


// Types:
struct SamuraiSlicePrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *samurai_slice_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable samurai_slice_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045fe4(void);    // [func_08045fe4] GFX_INIT Func_02
extern void func_08045ff4(void);    // [func_08045ff4] GFX_INIT Func_01
extern void func_08046024(void);    // [func_08046024] GFX_INIT Func_00
extern void samurai_slice_prologue_engine_start(u32);     // [func_08046054] MAIN - Init
extern void func_080460c8(void);    // [func_080460c8] ENGINE Func_00   (STUB)
extern void samurai_slice_prologue_engine_update(void);    // [func_080460cc] MAIN - Update    (STUB)
extern void samurai_slice_prologue_engine_stop(void);    // [func_080460d0] MAIN - Close     (STUB)
extern void func_080460d4(u32);     // [func_080460d4] Event 0 - Set Animation Frame (Text)
