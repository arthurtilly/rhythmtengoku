#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: QUIZ SHOW  //  //  //


// Types:
struct PrologueQuizShowInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ebb7c[]; // Buffered Textures
extern const struct GraphicsTable D_089ebb80[]; // Graphics Table
extern const struct Animation D_088b13c4[]; // Animation: Text (Quiz Show)

// Functions:
extern void func_08046528(void);    // [func_08046528] GFX_INIT Func_02
extern void func_08046538(void);    // [func_08046538] GFX_INIT Func_01
extern void func_08046568(void);    // [func_08046568] GFX_INIT Func_00
extern void func_08046598(u32);     // [func_08046598] MAIN - Init
extern void func_080465f8(void);    // [func_080465f8] ENGINE Func_00   (STUB)
extern void func_080465fc(void);    // [func_080465fc] MAIN - Update    (STUB)
extern void func_08046600(void);    // [func_08046600] MAIN - Close     (STUB)
extern void func_08046604(u32);     // [func_08046604] Event 0 - Set Animation Frame (Text)
