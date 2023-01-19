#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: WIZARD'S WALTZ  //  //  //


// Types:
struct PrologueWizardsWaltzInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_wizards_waltz_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_wizards_waltz_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_wizards_waltz_title[]; // Animation: Text (Wizard's Waltz)
extern const struct SequenceData s_jingle_witch_seqData;

// Functions:
extern void func_08047d4c(void);    // [func_08047d4c] GFX_INIT Func_02
extern void func_08047d5c(void);    // [func_08047d5c] GFX_INIT Func_01
extern void func_08047d8c(void);    // [func_08047d8c] GFX_INIT Func_00
extern void func_08047dbc(u32);     // [func_08047dbc] MAIN - Init
extern void func_08047e18(void);    // [func_08047e18] ENGINE Func_00   (STUB)
extern void func_08047e1c(void);    // [func_08047e1c] MAIN - Update    (STUB)
extern void func_08047e20(void);    // [func_08047e20] MAIN - Close     (STUB)
extern void func_08047e24(void);    // [func_08047e24] Event 0 - Play Animation (Text)
