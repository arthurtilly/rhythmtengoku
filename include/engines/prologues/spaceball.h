#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: SPACEBALL  //  //  //


// Types:
struct PrologueSpaceballInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *D_089ea26c[]; // Buffered Textures
extern const struct GraphicsTable D_089ea270[]; // Graphics Table
extern const struct Animation D_088ad3f4[]; // Animation: Text (Spaceball)
extern const struct SequenceData s_jingle_baseball_seqData; // Music: Prologue (Spaceball)

// Functions:
extern void func_08045208(void);    // [func_08045208] GFX_INIT Func_02
extern void func_08045218(void);    // [func_08045218] GFX_INIT Func_01
extern void func_08045248(void);    // [func_08045248] GFX_INIT Func_00
extern void func_08045278(u32);     // [func_08045278] MAIN - Init
extern void func_080452d4(void);    // [func_080452d4] ENGINE Func_00   (STUB)
extern void func_080452d8(void);    // [func_080452d8] MAIN - Update    (STUB)
extern void func_080452dc(void);    // [func_080452dc] MAIN - Close     (STUB)
extern void func_080452e0(u32);     // [func_080452e0] Event 0 - Set Animation Frame (Text)
