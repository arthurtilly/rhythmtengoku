#pragma once

#include "global.h"
#include "engines.h"

#include "games/space_dance/graphics/space_dance_prologue_graphics.h"


  //  //  //  PROLOGUE: COSMIC DANCE  //  //  //


// Types:
struct CosmicDancePrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *cosmic_dance_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable cosmic_dance_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045664(void);    // [func_08045664] GFX_INIT Func_02
extern void func_08045674(void);    // [func_08045674] GFX_INIT Func_01
extern void func_080456a4(void);    // [func_080456a4] GFX_INIT Func_00
extern void cosmic_dance_prologue_engine_start(u32);     // [func_080456d4] MAIN - Init
extern void func_08045730(void);    // [func_08045730] ENGINE Func_00   (STUB)
extern void cosmic_dance_prologue_engine_update(void);    // [func_08045734] MAIN - Update    (STUB)
extern void cosmic_dance_prologue_engine_stop(void);    // [func_08045738] MAIN - Close     (STUB)
extern void func_0804573c(void);    // [func_0804573c] Event 0 - Show Dancers
