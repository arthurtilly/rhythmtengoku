#pragma once

#include "global.h"
#include "engines.h"

#include "games/rat_race/graphics/rat_race_prologue_graphics.h"


  //  //  //  PROLOGUE: RAT RACE  //  //  //


// Types:
struct RatRacePrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
    s16 ratSprite;  // Sprite: Rat
};

// Assets:
extern struct CompressedData *rat_race_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable rat_race_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08047164(void);    // [func_08047164] GFX_INIT Func_02
extern void func_08047174(void);    // [func_08047174] GFX_INIT Func_01
extern void func_080471a4(void);    // [func_080471a4] GFX_INIT Func_00
extern void rat_race_prologue_engine_start(u32);     // [func_080471d4] MAIN - Init
extern void func_08047250(void);    // [func_08047250] ENGINE Func_00   (STUB)
extern void rat_race_prologue_engine_update(void);    // [func_08047254] MAIN - Update    (STUB)
extern void rat_race_prologue_engine_stop(void);    // [func_08047258] MAIN - Close     (STUB)
extern void func_0804725c(u32);     // [func_0804725c] Event 0 - Set Animation Frame (Text)
extern void func_08047280(void);    // [func_08047280] Event 1 - Play Animation (Rat)
