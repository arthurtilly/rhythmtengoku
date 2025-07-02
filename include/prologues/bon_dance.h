#pragma once

#include "global.h"
#include "engines.h"

#include "games/bon_odori/graphics/bon_odori_prologue_graphics.h"


  //  //  //  PROLOGUE: THE BON DANCE  //  //  //


// Types:
struct BonDancePrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *bon_dance_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable bon_dance_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045304(void);    // [func_08045304] GFX_INIT Func_02
extern void func_08045314(void);    // [func_08045314] GFX_INIT Func_01
extern void func_08045344(void);    // [func_08045344] GFX_INIT Func_00
extern void bon_dance_prologue_engine_start(u32);     // [func_08045374] MAIN - Init
extern void func_080453d0(void);    // [func_080453d0] ENGINE Func_00   (STUB)
extern void bon_dance_prologue_engine_update(void);    // [func_080453d4] MAIN - Update    (STUB)
extern void bon_dance_prologue_engine_stop(void);    // [func_080453d8] MAIN - Close     (STUB)
extern void func_080453dc(void);    // [func_080453dc] Event 0 - Play Animation (Text)
