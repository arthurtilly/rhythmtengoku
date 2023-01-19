#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: SHOWTIME  //  //  //


// Types:
struct PrologueShowtimeInfo {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 penguinSprite;  // Sprite: Penguin
};

// Assets:
extern const struct CompressedGraphics *const prologue_showtime_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_showtime_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_showtime_title[]; // Animation: Text (Showtime)
extern const struct Animation anim_prologue_showtime_penguin[]; // Animation: Penguin
extern const struct SequenceData s_jingle_quiz_seqData;

// Functions:
extern void func_08045944(void);    // [func_08045944] GFX_INIT Func_02
extern void func_08045954(void);    // [func_08045954] GFX_INIT Func_01
extern void func_08045984(void);    // [func_08045984] GFX_INIT Func_00
extern void func_080459b4(u32);     // [func_080459b4] MAIN - Init
extern void func_08045a44(void);    // [func_08045a44] ENGINE Func_00   (STUB)
extern void func_08045a48(void);    // [func_08045a48] MAIN - Update    (STUB)
extern void func_08045a4c(void);    // [func_08045a4c] MAIN - Close     (STUB)
extern void func_08045a50(void);    // [func_08045a50] Event 0 - Play Animation (Text), Play Animation (Penguin)
