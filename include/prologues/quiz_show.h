#pragma once

#include "global.h"
#include "engines.h"

#include "games/quiz_show/graphics/quiz_show_prologue_graphics.h"


  //  //  //  PROLOGUE: QUIZ SHOW  //  //  //


// Types:
struct QuizShowPrologueEngineData {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern struct CompressedData *quiz_show_prologue_buffered_textures[]; // Buffered Textures
extern struct GraphicsTable quiz_show_prologue_gfx_table[]; // Graphics Table

// Functions:
extern void func_08046528(void);    // [func_08046528] GFX_INIT Func_02
extern void func_08046538(void);    // [func_08046538] GFX_INIT Func_01
extern void func_08046568(void);    // [func_08046568] GFX_INIT Func_00
extern void quiz_show_prologue_engine_start(u32);     // [func_08046598] MAIN - Init
extern void func_080465f8(void);    // [func_080465f8] ENGINE Func_00   (STUB)
extern void quiz_show_prologue_engine_update(void);    // [func_080465fc] MAIN - Update    (STUB)
extern void quiz_show_prologue_engine_stop(void);    // [func_08046600] MAIN - Close     (STUB)
extern void func_08046604(u32);     // [func_08046604] Event 0 - Set Animation Frame (Text)
