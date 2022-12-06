#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: RAP WOMEN  //  //  //


// Types:
struct PrologueRapWomenInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ece80[]; // Buffered Textures
extern const struct GraphicsTable D_089ece84[]; // Graphics Table
extern const struct Animation D_088b3ac4[]; // Animation: Text (Rap Women)

// Functions:
extern void func_08047060(void);    // [func_08047060] GFX_INIT Func_02
extern void func_08047070(void);    // [func_08047070] GFX_INIT Func_01
extern void func_080470a0(void);    // [func_080470a0] GFX_INIT Func_00
extern void func_080470d0(u32);     // [func_080470d0] MAIN - Init
extern void func_0804712c(void);    // [func_0804712c] ENGINE Func_00   (STUB)
extern void func_08047130(void);    // [func_08047130] MAIN - Update    (STUB)
extern void func_08047134(void);    // [func_08047134] MAIN - Close     (STUB)
extern void func_08047138(void);    // [func_08047138] Event 0 - Play Animation (Text)
