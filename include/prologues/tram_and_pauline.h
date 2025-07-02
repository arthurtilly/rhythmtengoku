#pragma once

#include "global.h"
#include "engines.h"

#include "games/tram_and_pauline/graphics/tram_pauline_prologue_graphics.h"


  //  //  //  PROLOGUE: TRAM & PAULINE  //  //  //


// Types:
struct TramPaulinePrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *tram_pauline_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable tram_pauline_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08047ad0(void);    // [func_08047ad0] GFX_INIT Func_02
extern void func_08047ae0(void);    // [func_08047ae0] GFX_INIT Func_01
extern void func_08047b10(void);    // [func_08047b10] GFX_INIT Func_00
extern void tram_pauline_prologue_engine_start(u32);     // [func_08047b40] MAIN - Init
extern void func_08047bd0(void);    // [func_08047bd0] ENGINE Func_00   (STUB)
extern void tram_pauline_prologue_engine_update(void);    // [func_08047bd4] MAIN - Update    (STUB)
extern void tram_pauline_prologue_engine_stop(void);    // [func_08047bd8] MAIN - Close     (STUB)
extern void func_08047bdc(void);    // [func_08047bdc] Event 0 - Play Animation (Text)
