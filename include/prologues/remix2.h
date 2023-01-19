#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 2  //  //  //


// Types:
struct PrologueRemix2Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_remix2_buffered_textures[]; // Buffered Textures List
extern const struct GraphicsTable prologue_remix2_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_remix2_title[]; // Animation: Text (Remix 2)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046724(void);    // [func_08046724] GFX_INIT Func_02
extern void func_08046734(void);    // [func_08046734] GFX_INIT Func_01
extern void func_08046764(void);    // [func_08046764] GFX_INIT Func_00
extern void func_08046794(u32);     // [func_08046794] MAIN - Init
extern void func_080467f0(void);    // [func_080467f0] ENGINE Func_00   (STUB)
extern void func_080467f4(void);    // [func_080467f4] MAIN - Update    (STUB)
extern void func_080467f8(void);    // [func_080467f8] MAIN - Close     (STUB)
extern void func_080467fc(u32);     // [func_080467fc] Event 0 - Set Animation Frame (Text)
