#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: POWER CALLIGRAPHY  //  //  //


// Types:
struct ProloguePowerCalligraphyInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089eb530[]; // Buffered Textures
extern const struct GraphicsTable D_089eb534[]; // Graphics Table
extern const struct Animation D_088b0690[]; // Animation: Text (Power Calligraphy)
extern const struct Animation D_088b06b0[]; // Animation: HAI
extern const struct SequenceData s_sword_hi_seqData; // Sound: HAI

// Functions:
extern void func_080460f8(void);    // [func_080460f8] GFX_INIT Func_02
extern void func_08046108(void);    // [func_08046108] GFX_INIT Func_01
extern void func_08046138(void);    // [func_08046138] GFX_INIT Func_00
extern void func_08046168(u32);     // [func_08046168] MAIN - Init
extern void func_080461c4(void);    // [func_080461c4] ENGINE Func_00   (STUB)
extern void func_080461c8(void);    // [func_080461c8] MAIN - Update    (STUB)
extern void func_080461cc(void);    // [func_080461cc] MAIN - Close     (STUB)
extern void func_080461d0(u32);     // [func_080461d0] Event 0 - Set Animation Frame (Text)
extern void func_080461f4(void);    // [func_080461f4] Event 1 - HAI
