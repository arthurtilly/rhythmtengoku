#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 8  //  //  //


// Types:
struct Remix8PrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const remix_8_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable remix_8_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_remix_8_prologue_title[]; // Animation: Text (Remix 8)
extern const struct SequenceData s_jingle_remix_seqData;
extern const struct SequenceData s_f_scratch_seqData;

// Functions:
extern void func_08046d0c(void);    // [func_08046d0c] GFX_INIT Func_02
extern void func_08046d1c(void);    // [func_08046d1c] GFX_INIT Func_01
extern void func_08046d4c(void);    // [func_08046d4c] GFX_INIT Func_00
extern void remix_8_prologue_engine_start(u32);     // [func_08046d7c] MAIN - Init
extern void func_08046dd8(void);    // [func_08046dd8] ENGINE Func_00   (STUB)
extern void remix_8_prologue_engine_update(void);    // [func_08046ddc] MAIN - Update    (STUB)
extern void remix_8_prologue_engine_stop(void);    // [func_08046de0] MAIN - Close     (STUB)
extern void func_08046de4(u32);     // [func_08046de4] Event 0 - Set Animation Frame (Text)
