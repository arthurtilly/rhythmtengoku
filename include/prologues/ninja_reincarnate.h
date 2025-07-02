#pragma once

#include "global.h"
#include "engines.h"

#include "games/ninja_bodyguard/graphics/ninja_bodyguard_prologue_graphics.h"


  //  //  //  PROLOGUE: NINJA REINCARNATE  //  //  //


// Types:
struct NinjaReincarnatePrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *ninja_reincarnate_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable ninja_reincarnate_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_080473d4(void);    // [func_080473d4] GFX_INIT Func_02
extern void func_080473e4(void);    // [func_080473e4] GFX_INIT Func_01
extern void func_08047414(void);    // [func_08047414] GFX_INIT Func_00
extern void ninja_reincarnate_prologue_engine_start(u32);     // [func_08047444] MAIN - Init
extern void func_080474a0(void);    // [func_080474a0] ENGINE Func_00   (STUB)
extern void ninja_reincarnate_prologue_engine_update(void);    // [func_080474a4] MAIN - Update    (STUB)
extern void ninja_reincarnate_prologue_engine_stop(void);    // [func_080474a8] MAIN - Close     (STUB)
extern void func_080474ac(u32);     // [func_080474ac] Event 0 - Play Animation (Text)
