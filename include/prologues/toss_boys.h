#pragma once

#include "global.h"
#include "engines.h"

#include "games/toss_boys/graphics/toss_boys_prologue_graphics.h"


  //  //  //  PROLOGUE: TOSS BOYS  //  //  //


// Types:
struct TossBoysPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *toss_boys_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable toss_boys_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_080478d8(void);    // [func_080478d8] GFX_INIT Func_02
extern void func_080478e8(void);    // [func_080478e8] GFX_INIT Func_01
extern void func_08047918(void);    // [func_08047918] GFX_INIT Func_00
extern void toss_boys_prologue_engine_start(u32);     // [func_08047948] MAIN - Init
extern void func_080479a4(void);    // [func_080479a4] ENGINE Func_00   (STUB)
extern void toss_boys_prologue_engine_update(void);    // [func_080479a8] MAIN - Update    (STUB)
extern void toss_boys_prologue_engine_stop(void);    // [func_080479ac] MAIN - Close     (STUB)
extern void func_080479b0(u32);     // [func_080479b0] Event 0 - Set Animation Frame (Text)
