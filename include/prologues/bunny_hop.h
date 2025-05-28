#pragma once

#include "global.h"
#include "engines.h"

#include "games/bunny_hop/graphics/bunny_hop_prologue_graphics.h"


  //  //  //  PROLOGUE: BUNNY HOP  //  //  //


// Types:
struct BunnyHopPrologueEngineData {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 rabbitsSprite;  // Sprite: Rabbits
};

// Assets:
extern struct CompressedData *bunny_hop_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable bunny_hop_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046e08(void);    // [func_08046e08] GFX_INIT Func_02
extern void func_08046e18(void);    // [func_08046e18] GFX_INIT Func_01
extern void func_08046e48(void);    // [func_08046e48] GFX_INIT Func_00
extern void bunny_hop_prologue_engine_start(u32);     // [func_08046e78] MAIN - Init
extern void func_08046f00(void);    // [func_08046f00] ENGINE Func_00   (STUB)
extern void bunny_hop_prologue_engine_update(void);    // [func_08046f04] MAIN - Update    (STUB)
extern void bunny_hop_prologue_engine_stop(void);    // [func_08046f08] MAIN - Close     (STUB)
extern void func_08046f0c(u32);     // [func_08046f0c] Event 0 - Set Animation Frame (Text)
extern void func_08046f30(void);    // [func_08046f30] Event 1 - Play Animation (Rabbits)
