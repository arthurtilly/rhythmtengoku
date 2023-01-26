#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 5  //  //  //


// Types:
struct PrologueRemix5Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_remix5_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_remix5_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_remix5_title[]; // Animation: Text (Remix 5)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046a18(void);    // [func_08046a18] GFX_INIT Func_02
extern void func_08046a28(void);    // [func_08046a28] GFX_INIT Func_01
extern void func_08046a58(void);    // [func_08046a58] GFX_INIT Func_00
extern void func_08046a88(u32);     // [func_08046a88] MAIN - Init
extern void func_08046ae4(void);    // [func_08046ae4] ENGINE Func_00   (STUB)
extern void func_08046ae8(void);    // [func_08046ae8] MAIN - Update    (STUB)
extern void func_08046aec(void);    // [func_08046aec] MAIN - Close     (STUB)
extern void func_08046af0(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)
