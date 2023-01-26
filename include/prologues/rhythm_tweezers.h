#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: RHYTHM TWEEZERS  //  //  //


// Types:
struct PrologueRhythmTweezersInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_rhythm_tweezers_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_rhythm_tweezers_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_rhythm_tweezers_title[]; // Animation: Text (Rhythm Tweezers)
extern const struct SequenceData s_jingle_datumo_seqData;

// Functions:
extern void func_08045bec(void);    // [func_08045bec] GFX_INIT Func_02
extern void func_08045bfc(void);    // [func_08045bfc] GFX_INIT Func_01
extern void func_08045c2c(void);    // [func_08045c2c] GFX_INIT Func_00
extern void func_08045c5c(u32);     // [func_08045c5c] MAIN - Init
extern void func_08045cb8(void);    // [func_08045cb8] ENGINE Func_00   (STUB)
extern void func_08045cbc(void);    // [func_08045cbc] MAIN - Update    (STUB)
extern void func_08045cc0(void);    // [func_08045cc0] MAIN - Close     (STUB)
extern void func_08045cc4(void);    // [func_08045cc4] Event 0 - Play Animation (Text)
