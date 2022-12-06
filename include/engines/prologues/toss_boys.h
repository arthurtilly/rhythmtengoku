#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: TOSS BOYS  //  //  //


// Types:
struct PrologueTossBoysInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ed820[]; // Buffered Textures
extern const struct GraphicsTable D_089ed824[]; // Graphics Table
extern const struct Animation D_088b8098[]; // Animation: Text (Toss Boys)

// Functions:
extern void func_080478d8(void);    // [func_080478d8] GFX_INIT Func_02
extern void func_080478e8(void);    // [func_080478e8] GFX_INIT Func_01
extern void func_08047918(void);    // [func_08047918] GFX_INIT Func_00
extern void func_08047948(u32);     // [func_08047948] MAIN - Init
extern void func_080479a4(void);    // [func_080479a4] ENGINE Func_00   (STUB)
extern void func_080479a8(void);    // [func_080479a8] MAIN - Update    (STUB)
extern void func_080479ac(void);    // [func_080479ac] MAIN - Close     (STUB)
extern void func_080479b0(u32);     // [func_080479b0] Event 0 - Set Animation Frame (Text)
