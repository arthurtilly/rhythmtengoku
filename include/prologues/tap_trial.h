#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: TAP TRIAL  //  //  //


// Types:
struct PrologueTapTrialInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_tap_trial_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_tap_trial_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_tap_trial_title[]; // Animation: Text (Tap Trial)
extern const struct SequenceData s_jingle_tap_seqData;

// Functions:
extern void func_08047678(void);    // [func_08047678] GFX_INIT Func_02
extern void func_08047688(void);    // [func_08047688] GFX_INIT Func_01
extern void func_080476b8(void);    // [func_080476b8] GFX_INIT Func_00
extern void func_080476e8(u32);     // [func_080476e8] MAIN - Init
extern void func_08047764(void);    // [func_08047764] ENGINE Func_00   (STUB)
extern void func_08047768(void);    // [func_08047768] MAIN - Update    (STUB)
extern void func_0804776c(void);    // [func_0804776c] MAIN - Close     (STUB)
extern void func_08047770(u32);     // [func_08047770] Event 0 - Set Animation Frame (Text)
extern void func_08047794(void);    // [func_08047794] Event 1 - Animate Text
