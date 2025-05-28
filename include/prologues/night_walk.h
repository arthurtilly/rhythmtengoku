#pragma once

#include "global.h"
#include "engines.h"

#include "games/night_walk/graphics/night_walk_prologue_graphics.h"


  //  //  //  PROLOGUE: NIGHT WALK  //  //  //


// Types:
struct NightWalkPrologueEngineData {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 playYanSprite;  // Sprite: Play-yan
    s16 balloonsSprite; // Sprite: Balloons
};

// Assets:
extern struct CompressedData *night_walk_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable night_walk_prologue_gfx_table[]; // Graphics Table


// Functions:
extern void func_080457b4(void);    // [func_080457b4] GFX_INIT Func_02
extern void func_080457c4(void);    // [func_080457c4] GFX_INIT Func_01
extern void func_080457f4(void);    // [func_080457f4] GFX_INIT Func_00
extern void night_walk_prologue_engine_start(u32);     // [func_08045824] MAIN - Init
extern void func_080458e0(void);    // [func_080458e0] ENGINE Func_00   (STUB)
extern void night_walk_prologue_engine_update(void);    // [func_080458e4] MAIN - Update    (STUB)
extern void night_walk_prologue_engine_stop(void);    // [func_080458e8] MAIN - Close     (STUB)
extern void func_080458ec(u32);     // [func_080458ec] Event 0 - Play Animation (Play-yan); Event 1 - Play Animation (Text)
