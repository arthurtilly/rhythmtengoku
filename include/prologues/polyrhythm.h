#pragma once

#include "global.h"
#include "engines.h"

#include "games/polyrhythm/graphics/polyrhythm_prologue_graphics.h"


  //  //  //  PROLOGUE: POLYRHYTHM  //  //  //


// Types:
struct PolyrhythmPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *polyrhythm_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable polyrhythm_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_0804642c(void);    // [func_0804642c] GFX_INIT Func_02
extern void func_0804643c(void);    // [func_0804643c] GFX_INIT Func_01
extern void func_0804646c(void);    // [func_0804646c] GFX_INIT Func_00
extern void polyrhythm_prologue_engine_start(u32);     // [func_0804649c] MAIN - Init
extern void func_080464f8(void);    // [func_080464f8] ENGINE Func_00   (STUB)
extern void polyrhythm_prologue_engine_update(void);    // [func_080464fc] MAIN - Update    (STUB)
extern void polyrhythm_prologue_engine_stop(void);    // [func_08046500] MAIN - Close     (STUB)
extern void func_08046504(u32);     // [func_08046504] Event 0 - Set Animation Frame (Text)
