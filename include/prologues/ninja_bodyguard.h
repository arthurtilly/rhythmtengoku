#pragma once

#include "global.h"
#include "engines.h"

#include "games/ninja_bodyguard/graphics/ninja_bodyguard_prologue_graphics.h"


  //  //  //  PROLOGUE: NINJA BODYGUARD  //  //  //


// Types:
struct NinjaBodyguardPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *ninja_bodyguard_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable ninja_bodyguard_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_080472bc(void);    // [func_080472bc] GFX_INIT Func_02
extern void func_080472cc(void);    // [func_080472cc] GFX_INIT Func_01
extern void func_080472fc(void);    // [func_080472fc] GFX_INIT Func_00
extern void ninja_bodyguard_prologue_engine_start(u32);     // [func_0804732c] MAIN - Init
extern void func_08047398(void);    // [func_08047398] ENGINE Func_00   (STUB)
extern void ninja_bodyguard_prologue_engine_update(void);    // [func_0804739c] MAIN - Update    (STUB)
extern void ninja_bodyguard_prologue_engine_stop(void);    // [func_080473a0] MAIN - Close     (STUB)
extern void func_080473a4(u32);     // [func_080473a4] Event 0 - Play Animation (Text)
