#pragma once

#include "global.h"
#include "engines.h"

#include "games/sneaky_spirits/graphics/sneaky_spirits_prologue_graphics.h"


  //  //  //  PROLOGUE: SNEAKY SPIRITS  //  //  //


// Types:
struct SneakySpiritsPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *sneaky_spirits_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable sneaky_spirits_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_0804510c(void);    // [func_0804510c] GFX_INIT Func_02
extern void func_0804511c(void);    // [func_0804511c] GFX_INIT Func_01
extern void func_0804514c(void);    // [func_0804514c] GFX_INIT Func_00
extern void sneaky_spirits_prologue_engine_start(u32);     // [func_0804517c] MAIN - Init
extern void func_080451d8(void);    // [func_080451d8] ENGINE Func_00   (STUB)
extern void sneaky_spirits_prologue_engine_update(void);    // [func_080451dc] MAIN - Update    (STUB)
extern void sneaky_spirits_prologue_engine_stop(void);    // [func_080451e0] MAIN - Close     (STUB)
extern void func_080451e4(u32);     // [func_080451e4] Event 0 - Set Animation Frame (Text)
