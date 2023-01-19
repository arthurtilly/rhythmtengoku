#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 7  //  //  //


// Types:
struct PrologueRemix7Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_remix7_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_remix7_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_remix7_title[]; // Animation: Text (Remix 7)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046c10(void);    // [func_08046c10] GFX_INIT Func_02
extern void func_08046c20(void);    // [func_08046c20] GFX_INIT Func_01
extern void func_08046c50(void);    // [func_08046c50] GFX_INIT Func_00
extern void func_08046c80(u32);     // [func_08046c80] MAIN - Init
extern void func_08046cdc(void);    // [func_08046cdc] ENGINE Func_00   (STUB)
extern void func_08046ce0(void);    // [func_08046ce0] MAIN - Update    (STUB)
extern void func_08046ce4(void);    // [func_08046ce4] MAIN - Close     (STUB)
extern void func_08046ce8(u32);     // [func_08046ce8] Event 0 - Set Animation Frame (Text)
