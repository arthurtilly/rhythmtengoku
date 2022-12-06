#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 4  //  //  //


// Types:
struct PrologueRemix4Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ec210[]; // Buffered Textures
extern const struct GraphicsTable D_089ec214[]; // Graphics Table
extern const struct Animation D_088b23ec[]; // Animation: Text (Remix 4)

// Functions:
extern void func_0804691c(void);    // [func_0804691c] GFX_INIT Func_02
extern void func_0804692c(void);    // [func_0804692c] GFX_INIT Func_01
extern void func_0804695c(void);    // [func_0804695c] GFX_INIT Func_00
extern void func_0804698c(u32);     // [func_0804698c] MAIN - Init
extern void func_080469e8(void);    // [func_080469e8] ENGINE Func_00   (STUB)
extern void func_080469ec(void);    // [func_080469ec] MAIN - Update    (STUB)
extern void func_080469f0(void);    // [func_080469f0] MAIN - Close     (STUB)
extern void func_080469f4(u32);     // [func_080469f4] Event 0 - Set Animation Frame (Text)
