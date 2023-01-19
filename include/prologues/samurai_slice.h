#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: SAMURAI SLICE  //  //  //


// Types:
struct PrologueSamuraiSliceInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_samurai_slice_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_samurai_slice_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_samurai_slice_title[]; // Animation: Text (Samurai Slice)
extern const struct SequenceData s_jingle_iai_seqData;
extern const struct SequenceData s_f_iai_title_seqData;

// Functions:
extern void func_08045fe4(void);    // [func_08045fe4] GFX_INIT Func_02
extern void func_08045ff4(void);    // [func_08045ff4] GFX_INIT Func_01
extern void func_08046024(void);    // [func_08046024] GFX_INIT Func_00
extern void func_08046054(u32);     // [func_08046054] MAIN - Init
extern void func_080460c8(void);    // [func_080460c8] ENGINE Func_00   (STUB)
extern void func_080460cc(void);    // [func_080460cc] MAIN - Update    (STUB)
extern void func_080460d0(void);    // [func_080460d0] MAIN - Close     (STUB)
extern void func_080460d4(u32);     // [func_080460d4] Event 0 - Set Animation Frame (Text)
