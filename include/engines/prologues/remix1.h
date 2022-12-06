#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: REMIX 1  //  //  //


// Types:
struct PrologueRemix1Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ebcac[]; // Buffered Textures List
extern const struct GraphicsTable D_089ebcb0[]; // Graphics Table
extern const struct Animation D_088b17d0[]; // Animation: Text (Remix 1)

// Functions:
extern void func_08046628(void);    // [func_08046628] GFX_INIT Func_02
extern void func_08046638(void);    // [func_08046638] GFX_INIT Func_01
extern void func_08046668(void);    // [func_08046668] GFX_INIT Func_00
extern void func_08046698(u32);     // [func_08046698] MAIN - Init
extern void func_080466f4(void);    // [func_080466f4] ENGINE Func_00   (STUB)
extern void func_080466f8(void);    // [func_080466f8] MAIN - Update    (STUB)
extern void func_080466fc(void);    // [func_080466fc] MAIN - Close     (STUB)
extern void func_08046700(u32);     // [func_08046700] Event 0 - Set Animation Frame (Text)
