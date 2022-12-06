#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 8  //  //  //


// Types:
struct PrologueRemix8Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ec988[]; // Buffered Textures
extern const struct GraphicsTable D_089ec98c[]; // Graphics Table
extern const struct Animation D_088b332c[]; // Animation: Text (Remix 8)

// Functions:
extern void func_08046d0c(void);    // [func_08046d0c] GFX_INIT Func_02
extern void func_08046d1c(void);    // [func_08046d1c] GFX_INIT Func_01
extern void func_08046d4c(void);    // [func_08046d4c] GFX_INIT Func_00
extern void func_08046d7c(u32);     // [func_08046d7c] MAIN - Init
extern void func_08046dd8(void);    // [func_08046dd8] ENGINE Func_00   (STUB)
extern void func_08046ddc(void);    // [func_08046ddc] MAIN - Update    (STUB)
extern void func_08046de0(void);    // [func_08046de0] MAIN - Close     (STUB)
extern void func_08046de4(u32);     // [func_08046de4] Event 0 - Set Animation Frame (Text)
