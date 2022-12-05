#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: THE SNAPPY TRIO  //  //  //


// Types:
struct PrologueSnappyTrioInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089eb1c8[]; // Buffered Textures List
extern const struct GraphicsTable D_089eb1cc[]; // Graphics Table
extern const struct Animation D_088afdc4[]; // Animation: Text (The Snappy Trio)

// Functions:
extern void func_08045ee8(void);    // [func_08045ee8] GFX_INIT Func_02
extern void func_08045ef8(void);    // [func_08045ef8] GFX_INIT Func_01
extern void func_08045f28(void);    // [func_08045f28] GFX_INIT Func_00
extern void func_08045f58(u32);     // [func_08045f58] MAIN - Init
extern void func_08045fb4(void);    // [func_08045fb4] ENGINE Func_00   (STUB)
extern void func_08045fb8(void);    // [func_08045fb8] MAIN - Update    (STUB)
extern void func_08045fbc(void);    // [func_08045fbc] MAIN - Close     (STUB)
extern void func_08045fc0(u32);     // [func_08045fc0] Event 0 - Set Animation Frame (Text)
