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
extern const struct CompressedGraphics *D_089ede24[]; // Buffered Textures
extern const struct GraphicsTable D_089ede28[]; // Graphics Table
extern const struct Animation D_088b8e50[]; // Animation: Text (Wizard's Waltz)

// Functions:
extern void func_08047d4c(void);    // [func_08047d4c] GFX_INIT Func_02
extern void func_08047d5c(void);    // [func_08047d5c] GFX_INIT Func_01
extern void func_08047d8c(void);    // [func_08047d8c] GFX_INIT Func_00
extern void func_08047dbc(u32);     // [func_08047dbc] MAIN - Init
extern void func_08047e18(void);    // [func_08047e18] ENGINE Func_00   (STUB)
extern void func_08047e1c(void);    // [func_08047e1c] MAIN - Update    (STUB)
extern void func_08047e20(void);    // [func_08047e20] MAIN - Close     (STUB)
extern void func_08047e24(void);    // [func_08047e24] Event 0 - Play Animation (Text)
