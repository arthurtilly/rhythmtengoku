#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 8  //  //  //


// Types:
struct PrologueRemix8Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_remix8_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_remix8_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_remix8_title[]; // Animation: Text (Remix 8)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046d0c(void);    // [func_08046d0c] GFX_INIT Func_02
extern void func_08046d1c(void);    // [func_08046d1c] GFX_INIT Func_01
extern void func_08046d4c(void);    // [func_08046d4c] GFX_INIT Func_00
extern void func_08046d7c(u32);     // [func_08046d7c] MAIN - Init
extern void func_08046dd8(void);    // [func_08046dd8] ENGINE Func_00   (STUB)
extern void func_08046ddc(void);    // [func_08046ddc] MAIN - Update    (STUB)
extern void func_08046de0(void);    // [func_08046de0] MAIN - Close     (STUB)
extern void func_08046de4(u32);     // [func_08046de4] Event 0 - Set Animation Frame (Text)
