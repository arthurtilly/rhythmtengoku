#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: BON DANCE  //  //  //


// Types:
struct BonDancePrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedGraphics *bon_dance_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable bon_dance_prologue_gfx_table[]; // Graphics Table
extern struct Animation anim_bon_odori_prologue_title[]; // Animation: Text (Bon Dance)

// Functions:
extern void func_08045408(void);    // [func_08045408] GFX_INIT Func_02
extern void func_08045418(void);    // [func_08045418] GFX_INIT Func_01
extern void func_08045448(void);    // [func_08045448] GFX_INIT Func_00
extern void bon_dance_prologue_engine_start(u32);     // [func_08045478] MAIN - Init
extern void func_080454d4(void);    // [func_080454d4] ENGINE Func_00   (STUB)
extern void bon_dance_prologue_engine_update(void);    // [func_080454d8] MAIN - Update    (STUB)
extern void bon_dance_prologue_engine_stop(void);    // [func_080454dc] MAIN - Close     (STUB)
extern void func_080454e0(void);    // [func_080454e0] Event 0 - Play Animation (Text)
