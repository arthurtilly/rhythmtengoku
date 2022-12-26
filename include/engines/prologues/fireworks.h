#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: FIREWORKS  //  //  //


// Types:
struct PrologueFireworksInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_fireworks_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_fireworks_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_fireworks_title[]; // Animation: Text (Fireworks)
extern const struct SequenceData s_jingle_bon_seqData;

// Functions:
extern void func_08045cf0(void);    // [func_08045cf0] GFX_INIT Func_02
extern void func_08045d00(void);    // [func_08045d00] GFX_INIT Func_01
extern void func_08045d30(void);    // [func_08045d30] GFX_INIT Func_00
extern void func_08045d60(u32);     // [func_08045d60] MAIN - Init
extern void func_08045dbc(void);    // [func_08045dbc] ENGINE Func_00   (STUB)
extern void func_08045dc0(void);    // [func_08045dc0] MAIN - Update    (STUB)
extern void func_08045dc4(void);    // [func_08045dc4] MAIN - Close     (STUB)
extern void func_08045dc8(u32);     // [func_08045dc8] Event 0 - Set Animation Frame (Text)
