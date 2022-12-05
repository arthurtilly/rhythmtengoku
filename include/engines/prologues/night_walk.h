#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: NIGHT WALK  //  //  //


// Types:
struct PrologueNightWalkInfo {
    u8  ver;            // Value:  Version
    s16 textSprite;     // Sprite: Text
    s16 playYanSprite;  // Sprite: Play-yan
    s16 balloonsSprite; // Sprite: Balloons
};

// Assets:
extern const struct CompressedGraphics *D_089ea988[]; // Buffered Textures
extern const struct GraphicsTable D_089ea98c[]; // Graphics Table
extern const struct Animation D_088ae2a8[]; // Animation: Text (Night Walk)
extern const struct Animation D_088ae048[]; // Animation: Play-yan
extern const struct Animation D_088ae160[]; // Animation: Balloons

// Functions:
extern void func_080457b4(void);    // [func_080457b4] GFX_INIT Func_02
extern void func_080457c4(void);    // [func_080457c4] GFX_INIT Func_01
extern void func_080457f4(void);    // [func_080457f4] GFX_INIT Func_00
extern void func_08045824(u32);     // [func_08045824] MAIN - Init
extern void func_080458e0(void);    // [func_080458e0] ENGINE Func_00   (STUB)
extern void func_080458e4(void);    // [func_080458e4] MAIN - Update    (STUB)
extern void func_080458e8(void);    // [func_080458e8] MAIN - Close     (STUB)
extern void func_080458ec(u32);     // [func_080458ec] Event 0 - Play Animation (Play-yan); Event 1 - Play Animation (Text)
