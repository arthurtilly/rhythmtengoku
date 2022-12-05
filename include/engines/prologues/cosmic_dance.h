#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: COSMIC DANCE  //  //  //


// Types:
struct PrologueCosmicDanceInfo {
    u8  ver;    // Value:  Version
    s16 sprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ea864[]; // Buffered Textures
extern const struct GraphicsTable D_089ea868[]; // Graphics Table
extern const struct Animation D_088adb94[]; // Animation: Text (Cosmic Dance)
extern const struct Animation D_088adba4[]; // Animation: Cosmic Dancers

// Functions:
extern void func_08045664(void);    // [func_08045664] GFX_INIT Func_02
extern void func_08045674(void);    // [func_08045674] GFX_INIT Func_01
extern void func_080456a4(void);    // [func_080456a4] GFX_INIT Func_00
extern void func_080456d4(u32);     // [func_080456d4] MAIN - Init
extern void func_08045730(void);    // [func_08045730] ENGINE Func_00   (STUB)
extern void func_08045734(void);    // [func_08045734] MAIN - Update    (STUB)
extern void func_08045738(void);    // [func_08045738] MAIN - Close     (STUB)
extern void func_0804573c(void);    // [func_0804573c] Event 0 - Show Dancers
