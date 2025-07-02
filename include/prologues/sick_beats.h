#pragma once

#include "global.h"
#include "engines.h"

#include "games/sick_beats/graphics/sick_beats_prologue_graphics.h"


  //  //  //  PROLOGUE: SICK BEATS  //  //  //


// Types:
struct SickBeatsPrologueEngineData {
    u8  ver;         // Value:  Version
    s16 textSprite;  // Sprite: Text
    s16 virusSprite; // Sprite: Virus
};

// Assets:
extern struct CompressedData *sick_beats_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable sick_beats_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08047c08(void);    // [func_08047c08] GFX_INIT Func_02
extern void func_08047c18(void);    // [func_08047c18] GFX_INIT Func_01
extern void func_08047c48(void);    // [func_08047c48] GFX_INIT Func_00
extern void sick_beats_prologue_engine_start(u32);     // [func_08047c78] MAIN - Init
extern void func_08047d00(void);    // [func_08047d00] ENGINE Func_00   (STUB)
extern void sick_beats_prologue_engine_update(void);    // [func_08047d04] MAIN - Update    (STUB)
extern void sick_beats_prologue_engine_stop(void);    // [func_08047d08] MAIN - Close     (STUB)
extern void func_08047d0c(void);    // [func_08047d0c] Event 0 - Play Animation (Text), Play Animation (Virus)
