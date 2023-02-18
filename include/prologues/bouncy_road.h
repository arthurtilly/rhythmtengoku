#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: BOUNCY ROAD  //  //  //


// Types:
struct BouncyRoadPrologueInfo {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 bouncersSprite; // Sprite: Bouncers
};

// Assets:
extern const struct CompressedGraphics *const bouncy_road_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable bouncy_road_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_bouncy_road_prologue_title[]; // Animation: Text (Bouncy Road)
extern const struct Animation anim_bouncy_road_prologue_path[]; // Animation: Bouncers
extern const struct SequenceData s_jingle_poli_seqData;

// Functions:
extern void func_08045a90(void);    // [func_08045a90] GFX_INIT Func_02
extern void func_08045aa0(void);    // [func_08045aa0] GFX_INIT Func_01
extern void func_08045ad0(void);    // [func_08045ad0] GFX_INIT Func_00
extern void func_08045b00(u32);     // [func_08045b00] MAIN - Init
extern void func_08045b88(void);    // [func_08045b88] ENGINE Func_00   (STUB)
extern void func_08045b8c(void);    // [func_08045b8c] MAIN - Update    (STUB)
extern void func_08045b90(void);    // [func_08045b90] MAIN - Close     (STUB)
extern void func_08045b94(u32);     // [func_08045b94] Event 0 - Play Animation (Bouncers); Event 1 - Play Animation (Text)
