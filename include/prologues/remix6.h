#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 6  //  //  //


// Types:
struct PrologueRemix6Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_remix6_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_remix6_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_remix6_title[]; // Animation: Text (Remix 6)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046b14(void);    // [func_08046b14] GFX_INIT Func_02
extern void func_08046b24(void);    // [func_08046b24] GFX_INIT Func_01
extern void func_08046b54(void);    // [func_08046b54] GFX_INIT Func_00
extern void func_08046b84(u32);     // [func_08046b84] MAIN - Init
extern void func_08046be0(void);    // [func_08046be0] ENGINE Func_00   (STUB)
extern void func_08046be4(void);    // [func_08046be4] MAIN - Update    (STUB)
extern void func_08046be8(void);    // [func_08046be8] MAIN - Close     (STUB)
extern void func_08046bec(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)
