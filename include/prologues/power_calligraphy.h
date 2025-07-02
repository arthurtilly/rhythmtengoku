#pragma once

#include "global.h"
#include "engines.h"

#include "games/power_calligraphy/graphics/power_calligraphy_prologue_graphics.h"


  //  //  //  PROLOGUE: POWER CALLIGRAPHY  //  //  //


// Types:
struct PowerCalligraphyPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *power_calligraphy_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable power_calligraphy_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_080460f8(void);    // [func_080460f8] GFX_INIT Func_02
extern void func_08046108(void);    // [func_08046108] GFX_INIT Func_01
extern void func_08046138(void);    // [func_08046138] GFX_INIT Func_00
extern void power_calligraphy_prologue_engine_start(u32);     // [func_08046168] MAIN - Init
extern void func_080461c4(void);    // [func_080461c4] ENGINE Func_00   (STUB)
extern void power_calligraphy_prologue_engine_update(void);    // [func_080461c8] MAIN - Update    (STUB)
extern void power_calligraphy_prologue_engine_stop(void);    // [func_080461cc] MAIN - Close     (STUB)
extern void func_080461d0(u32);     // [func_080461d0] Event 0 - Set Animation Frame (Text)
extern void func_080461f4(void);    // [func_080461f4] Event 1 - HAI
