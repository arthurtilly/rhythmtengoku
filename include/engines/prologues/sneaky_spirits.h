#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: SNEAKY SPIRITS  //  //  //


// Types:
struct PrologueSneakySpiritsInfo {
    u8  ver;    // Value:  Version
    s16 sprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ea088[]; // Buffered Textures
extern const struct GraphicsTable D_089ea08c[]; // Graphics Table
extern const struct Animation D_088ad2bc[]; // Animation: Text (Sneaky Spirits)
extern const struct SequenceData s_jingle_ghost_seqData; // Music: Prologue (Sneaky Spirits)

// Functions:
extern void func_0804510c(void);    // [func_0804510c] GFX_INIT Func_02
extern void func_0804511c(void);    // [func_0804511c] GFX_INIT Func_01
extern void func_0804514c(void);    // [func_0804514c] GFX_INIT Func_00
extern void func_0804517c(u32);     // [func_0804517c] MAIN - Init
extern void func_080451d8(void);    // [func_080451d8] ENGINE Func_00   (STUB)
extern void func_080451dc(void);    // [func_080451dc] MAIN - Update    (STUB)
extern void func_080451e0(void);    // [func_080451e0] MAIN - Close     (STUB)
extern void func_080451e4(u32);     // [func_080451e4] Event 0 - Set Animation Frame (Text)
