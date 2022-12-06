#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 5  //  //  //


// Types:
struct PrologueRemix5Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ec3e8[]; // Buffered Textures
extern const struct GraphicsTable D_089ec3ec[]; // Graphics Table
extern const struct Animation D_088b27f4[]; // Animation: Text (Remix 5)

// Functions:
extern void func_08046a18(void);    // [func_08046a18] GFX_INIT Func_02
extern void func_08046a28(void);    // [func_08046a28] GFX_INIT Func_01
extern void func_08046a58(void);    // [func_08046a58] GFX_INIT Func_00
extern void func_08046a88(u32);     // [func_08046a88] MAIN - Init
extern void func_08046ae4(void);    // [func_08046ae4] ENGINE Func_00   (STUB)
extern void func_08046ae8(void);    // [func_08046ae8] MAIN - Update    (STUB)
extern void func_08046aec(void);    // [func_08046aec] MAIN - Close     (STUB)
extern void func_08046af0(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)
