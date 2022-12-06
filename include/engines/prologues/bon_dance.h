#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: BON DANCE  //  //  //


// Types:
struct PrologueBonDanceInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ea514[]; // Buffered Textures
extern const struct GraphicsTable D_089ea518[]; // Graphics Table
extern const struct Animation D_088ad898[]; // Animation: Text (Bon Dance)
extern const struct SequenceData s_jingle_bon_seqData; // Music: Prologue (The Bon Odori)

// Functions:
extern void func_08045408(void);    // [func_08045408] GFX_INIT Func_02
extern void func_08045418(void);    // [func_08045418] GFX_INIT Func_01
extern void func_08045448(void);    // [func_08045448] GFX_INIT Func_00
extern void func_08045478(u32);     // [func_08045478] MAIN - Init
extern void func_080454d4(void);    // [func_080454d4] ENGINE Func_00   (STUB)
extern void func_080454d8(void);    // [func_080454d8] MAIN - Update    (STUB)
extern void func_080454dc(void);    // [func_080454dc] MAIN - Close     (STUB)
extern void func_080454e0(void);    // [func_080454e0] Event 0 - Play Animation (Text)
