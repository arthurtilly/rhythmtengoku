#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: RAP WOMEN  //  //  //


// Types:
struct RapWomenPrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const rap_women_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable rap_women_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_rap_women_prologue_title[]; // Animation: Text (Rap Women)
extern const struct SequenceData s_jingle_rap_seqData;

// Functions:
extern void func_08047060(void);    // [func_08047060] GFX_INIT Func_02
extern void func_08047070(void);    // [func_08047070] GFX_INIT Func_01
extern void func_080470a0(void);    // [func_080470a0] GFX_INIT Func_00
extern void func_080470d0(u32);     // [func_080470d0] MAIN - Init
extern void func_0804712c(void);    // [func_0804712c] ENGINE Func_00   (STUB)
extern void func_08047130(void);    // [func_08047130] MAIN - Update    (STUB)
extern void func_08047134(void);    // [func_08047134] MAIN - Close     (STUB)
extern void func_08047138(void);    // [func_08047138] Event 0 - Play Animation (Text)
