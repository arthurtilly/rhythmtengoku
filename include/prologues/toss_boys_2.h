#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: TOSS BOYS 2  //  //  //


// Types:
struct PrologueTossBoys2Info {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_toss_boys_2_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_toss_boys_2_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_toss_boys_2_title[]; // Animation: Text (Toss Boys 2)
extern const struct SequenceData s_jingle_toss_seqData;

// Functions:
extern void func_080479d4(void);    // [func_080479d4] GFX_INIT Func_02
extern void func_080479e4(void);    // [func_080479e4] GFX_INIT Func_01
extern void func_08047a14(void);    // [func_08047a14] GFX_INIT Func_00
extern void func_08047a44(u32);     // [func_08047a44] MAIN - Init
extern void func_08047aa0(void);    // [func_08047aa0] ENGINE Func_00   (STUB)
extern void func_08047aa4(void);    // [func_08047aa4] MAIN - Update    (STUB)
extern void func_08047aa8(void);    // [func_08047aa8] MAIN - Close     (STUB)
extern void func_08047aac(u32);     // [func_08047aac] Event 0 - Set Animation Frame (Text)
