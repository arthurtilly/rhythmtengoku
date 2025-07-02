#pragma once

#include "global.h"
#include "engines.h"

#include "games/toss_boys/graphics/toss_boys_prologue_graphics.h"


  //  //  //  PROLOGUE: TOSS BOYS 2  //  //  //


// Types:
struct TossBoys2PrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *toss_boys_2_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable toss_boys_2_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_080479d4(void);    // [func_080479d4] GFX_INIT Func_02
extern void func_080479e4(void);    // [func_080479e4] GFX_INIT Func_01
extern void func_08047a14(void);    // [func_08047a14] GFX_INIT Func_00
extern void toss_boys_2_prologue_engine_start(u32);     // [func_08047a44] MAIN - Init
extern void func_08047aa0(void);    // [func_08047aa0] ENGINE Func_00   (STUB)
extern void toss_boys_2_prologue_engine_update(void);    // [func_08047aa4] MAIN - Update    (STUB)
extern void toss_boys_2_prologue_engine_stop(void);    // [func_08047aa8] MAIN - Close     (STUB)
extern void func_08047aac(u32);     // [func_08047aac] Event 0 - Set Animation Frame (Text)
