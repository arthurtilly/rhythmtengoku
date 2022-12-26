#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: BUNNY HOP  //  //  //


// Types:
struct PrologueBunnyHopInfo {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 rabbitsSprite;  // Sprite: Rabbits
};

// Assets:
extern const struct CompressedGraphics *const prologue_bunny_hop_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_bunny_hop_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_bunny_hop_title[]; // Animation: Text (Bunny Hop)
extern const struct Animation anim_prologue_bunny_hop_rabbits[]; // Animation: Rabbits
extern const struct SequenceData s_jingle_rat_seqData;

// Functions:
extern void func_08046e08(void);    // [func_08046e08] GFX_INIT Func_02
extern void func_08046e18(void);    // [func_08046e18] GFX_INIT Func_01
extern void func_08046e48(void);    // [func_08046e48] GFX_INIT Func_00
extern void func_08046e78(u32);     // [func_08046e78] MAIN - Init
extern void func_08046f00(void);    // [func_08046f00] ENGINE Func_00   (STUB)
extern void func_08046f04(void);    // [func_08046f04] MAIN - Update    (STUB)
extern void func_08046f08(void);    // [func_08046f08] MAIN - Close     (STUB)
extern void func_08046f0c(u32);     // [func_08046f0c] Event 0 - Set Animation Frame (Text)
extern void func_08046f30(void);    // [func_08046f30] Event 1 - Play Animation (Rabbits)
