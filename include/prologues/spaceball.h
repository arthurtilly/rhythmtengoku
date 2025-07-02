#pragma once

#include "global.h"
#include "engines.h"

#include "games/spaceball/graphics/spaceball_prologue_graphics.h"



  //  //  //  PROLOGUE: SPACEBALL  //  //  //


// Types:
struct SpaceballPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *spaceball_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable spaceball_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045208(void);    // [func_08045208] GFX_INIT Func_02
extern void func_08045218(void);    // [func_08045218] GFX_INIT Func_01
extern void func_08045248(void);    // [func_08045248] GFX_INIT Func_00
extern void spaceball_prologue_engine_start(u32);     // [func_08045278] MAIN - Init
extern void func_080452d4(void);    // [func_080452d4] ENGINE Func_00   (STUB)
extern void spaceball_prologue_engine_update(void);    // [func_080452d8] MAIN - Update    (STUB)
extern void spaceball_prologue_engine_stop(void);    // [func_080452dc] MAIN - Close     (STUB)
extern void func_080452e0(u32);     // [func_080452e0] Event 0 - Set Animation Frame (Text)
