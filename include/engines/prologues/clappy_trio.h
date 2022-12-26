#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: THE CLAPPY TRIO  //  //  //


// Types:
struct PrologueClappyTrioInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_clappy_trio_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_clappy_trio_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_clappy_trio_title[]; // Animation: Text (The Clappy Trio)
extern const struct SequenceData s_jingle_handclap_seqData;

// Functions:
extern void func_08045dec(void);    // [func_08045dec] GFX_INIT Func_02
extern void func_08045dfc(void);    // [func_08045dfc] GFX_INIT Func_01
extern void func_08045e2c(void);    // [func_08045e2c] GFX_INIT Func_00
extern void func_08045e5c(u32);     // [func_08045e5c] MAIN - Init
extern void func_08045eb8(void);    // [func_08045eb8] ENGINE Func_00   (STUB)
extern void func_08045ebc(void);    // [func_08045ebc] MAIN - Update    (STUB)
extern void func_08045ec0(void);    // [func_08045ec0] MAIN - Close     (STUB)
extern void func_08045ec4(u32);     // [func_08045ec4] Event 0 - Set Animation Frame (Text)
