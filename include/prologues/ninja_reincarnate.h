#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: NINJA REINCARNATE  //  //  //


// Types:
struct NinjaReincarnatePrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const ninja_reincarnate_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable ninja_reincarnate_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_ninja_reincarnate_prologue_title[]; // Animation: Text (Ninja Reincarnate)
extern const struct SequenceData s_jingle_iai_seqData;

// Functions:
extern void func_080473d4(void);    // [func_080473d4] GFX_INIT Func_02
extern void func_080473e4(void);    // [func_080473e4] GFX_INIT Func_01
extern void func_08047414(void);    // [func_08047414] GFX_INIT Func_00
extern void func_08047444(u32);     // [func_08047444] MAIN - Init
extern void func_080474a0(void);    // [func_080474a0] ENGINE Func_00   (STUB)
extern void func_080474a4(void);    // [func_080474a4] MAIN - Update    (STUB)
extern void func_080474a8(void);    // [func_080474a8] MAIN - Close     (STUB)
extern void func_080474ac(u32);     // [func_080474ac] Event 0 - Play Animation (Text)
