#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 3  //  //  //


// Types:
struct Remix3PrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const remix_3_prologue_buffered_textures[]; // Buffered Textures List
extern const struct GraphicsTable remix_3_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_remix_3_prologue_title[]; // Animation: Text (Remix 3)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046820(void);    // [func_08046820] GFX_INIT Func_02
extern void func_08046830(void);    // [func_08046830] GFX_INIT Func_01
extern void func_08046860(void);    // [func_08046860] GFX_INIT Func_00
extern void func_08046890(u32);     // [func_08046890] MAIN - Init
extern void func_080468ec(void);    // [func_080468ec] ENGINE Func_00   (STUB)
extern void func_080468f0(void);    // [func_080468f0] MAIN - Update    (STUB)
extern void func_080468f4(void);    // [func_080468f4] MAIN - Close     (STUB)
extern void func_080468f8(u32);     // [func_080468f8] Event 0 - Set Animation Frame (Text)
