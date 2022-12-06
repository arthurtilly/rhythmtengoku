#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: NINJA BODYGUARD 2  //  //  //


// Types:
struct PrologueNinjaBodyguard2Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ed2c4[]; // Buffered Textures
extern const struct GraphicsTable D_089ed2c8[]; // Graphics Table
extern const struct Animation D_088b432c[]; // Animation: Text (Ninja Bodyguard 2)

// Functions:
extern void func_080473d4(void);    // [func_080473d4] GFX_INIT Func_02
extern void func_080473e4(void);    // [func_080473e4] GFX_INIT Func_01
extern void func_08047414(void);    // [func_08047414] GFX_INIT Func_00
extern void func_08047444(u32);     // [func_08047444] MAIN - Init
extern void func_080474a0(void);    // [func_080474a0] ENGINE Func_00   (STUB)
extern void func_080474a4(void);    // [func_080474a4] MAIN - Update    (STUB)
extern void func_080474a8(void);    // [func_080474a8] MAIN - Close     (STUB)
extern void func_080474ac(u32);     // [func_080474ac] Event 0 - Play Animation (Text)
