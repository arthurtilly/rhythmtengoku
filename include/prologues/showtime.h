#pragma once

#include "global.h"
#include "engines.h"

#include "games/showtime/graphics/showtime_prologue_graphics.h"


  //  //  //  PROLOGUE: SHOWTIME  //  //  //


// Types:
struct ShowtimePrologueEngineData {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 penguinSprite;  // Sprite: Penguin
};

// Assets:
extern struct CompressedData *showtime_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable showtime_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08045944(void);    // [func_08045944] GFX_INIT Func_02
extern void func_08045954(void);    // [func_08045954] GFX_INIT Func_01
extern void func_08045984(void);    // [func_08045984] GFX_INIT Func_00
extern void showtime_prologue_engine_start(u32);     // [func_080459b4] MAIN - Init
extern void func_08045a44(void);    // [func_08045a44] ENGINE Func_00   (STUB)
extern void showtime_prologue_engine_update(void);    // [func_08045a48] MAIN - Update    (STUB)
extern void showtime_prologue_engine_stop(void);    // [func_08045a4c] MAIN - Close     (STUB)
extern void func_08045a50(void);    // [func_08045a50] Event 0 - Play Animation (Text), Play Animation (Penguin)
