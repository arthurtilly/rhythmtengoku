#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: TAP TRIAL 2  //  //  //


// Types:
struct TapTrial2PrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const tap_trial_2_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable tap_trial_2_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_tap_trial_2_prologue_title[]; // Animation: Text (Tap Trial 2)
extern const struct SequenceData s_jingle_tap_seqData;

// Functions:
extern void func_080477b4(void);    // [func_080477b4] GFX_INIT Func_02
extern void func_080477c4(void);    // [func_080477c4] GFX_INIT Func_01
extern void func_080477f4(void);    // [func_080477f4] GFX_INIT Func_00
extern void func_08047824(u32);     // [func_08047824] MAIN - Init
extern void func_08047888(void);    // [func_08047888] ENGINE Func_00   (STUB)
extern void func_0804788c(void);    // [func_0804788c] MAIN - Update    (STUB)
extern void func_08047890(void);    // [func_08047890] MAIN - Close     (STUB)
extern void func_08047894(u32);     // [func_08047894] Event 0 - Set Animation Frame (Text)
extern void func_080478b8(void);    // [func_080478b8] Event 1 - Animate Text
