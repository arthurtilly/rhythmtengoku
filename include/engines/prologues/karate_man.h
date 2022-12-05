#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: KARATE MAN  //  //  //


// Types:
struct PrologueKarateManInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
    s16 kickSprite; // Sprite: Kick
};

// Assets:
extern const struct CompressedGraphics *D_089ea650[]; // Buffered Textures
extern const struct GraphicsTable D_089ea654[]; // Graphics Table
extern const struct Animation D_088ada78[]; // Animation: Text (Karate Man)
extern const struct Animation D_088adaa8[]; // Animation: Kick

// Functions:
extern void func_0804550c(void);    // [func_0804550c] GFX_INIT Func_02
extern void func_0804551c(void);    // [func_0804551c] GFX_INIT Func_01
extern void func_0804554c(void);    // [func_0804554c] GFX_INIT Func_00
extern void func_0804557c(u32);     // [func_0804557c] MAIN - Init
extern void func_080455f8(void);    // [func_080455f8] ENGINE Func_00   (STUB)
extern void func_080455fc(void);    // [func_080455fc] MAIN - Update    (STUB)
extern void func_08045600(void);    // [func_08045600] MAIN - Close     (STUB)
extern void func_08045604(u32);     // [func_08045604] Event 0 - Set Animation Frame (Text)
extern void func_08045628(void);    // [func_08045628] Event 1 - Play Animation (Kick)
