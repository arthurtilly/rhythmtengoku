#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: THE BON ODORI  //  //  //


// Types:
struct PrologueBonOdoriInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ea3e4[]; // Buffered Textures
extern const struct GraphicsTable D_089ea3e8[]; // Graphics Table
extern const struct Animation D_088ad530[]; // Animation: Text (The Bon Odori)
extern const struct SequenceData s_jingle_bon_seqData; // Music: Prologue (The Bon Odori)

// Functions:
extern void func_08045304(void);    // [func_08045304] GFX_INIT Func_02
extern void func_08045314(void);    // [func_08045314] GFX_INIT Func_01
extern void func_08045344(void);    // [func_08045344] GFX_INIT Func_00
extern void func_08045374(u32);     // [func_08045374] MAIN - Init
extern void func_080453d0(void);    // [func_080453d0] ENGINE Func_00   (STUB)
extern void func_080453d4(void);    // [func_080453d4] MAIN - Update    (STUB)
extern void func_080453d8(void);    // [func_080453d8] MAIN - Close     (STUB)
extern void func_080453dc(void);    // [func_080453dc] Event 0 - Play Animation (Text)
