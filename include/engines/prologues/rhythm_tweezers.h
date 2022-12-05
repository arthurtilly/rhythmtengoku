#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: RHYTHM TWEEZERS  //  //  //


// Types:
struct PrologueRhythmTweezersInfo {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ead54[]; // Buffered Textures
extern const struct GraphicsTable D_089ead58[]; // Graphics Table
extern const struct Animation D_088af6b4[]; // Animation: Text (Rhythm Tweezers)

// Functions:
extern void func_08045bec(void);    // [func_08045bec] GFX_INIT Func_02
extern void func_08045bfc(void);    // [func_08045bfc] GFX_INIT Func_01
extern void func_08045c2c(void);    // [func_08045c2c] GFX_INIT Func_00
extern void func_08045c5c(u32);     // [func_08045c5c] MAIN - Init
extern void func_08045cb8(void);    // [func_08045cb8] ENGINE Func_00   (STUB)
extern void func_08045cbc(void);    // [func_08045cbc] MAIN - Update    (STUB)
extern void func_08045cc0(void);    // [func_08045cc0] MAIN - Close     (STUB)
extern void func_08045cc4(void);    // [func_08045cc4] Event 0 - Play Animation (Text)
