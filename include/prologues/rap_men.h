#pragma once

#include "global.h"
#include "engines.h"

#include "games/rap_men/graphics/rap_men_prologue_graphics.h"


  //  //  //  PROLOGUE: RAP MEN  //  //  //


// Types:
struct RapMenPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *rap_men_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable rap_men_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046f5c(void);    // [func_08046f5c] GFX_INIT Func_02
extern void func_08046f6c(void);    // [func_08046f6c] GFX_INIT Func_01
extern void func_08046f9c(void);    // [func_08046f9c] GFX_INIT Func_00
extern void rap_men_prologue_engine_start(u32);     // [func_08046fcc] MAIN - Init
extern void func_08047028(void);    // [func_08047028] ENGINE Func_00   (STUB)
extern void rap_men_prologue_engine_update(void);    // [func_0804702c] MAIN - Update    (STUB)
extern void rap_men_prologue_engine_stop(void);    // [func_08047030] MAIN - Close     (STUB)
extern void func_08047034(void);    // [func_08047034] Event 0 - Play Animation (Text)
