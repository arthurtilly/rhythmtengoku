#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: TOSS BOYS  //  //  //


// Types:
struct TossBoysPrologueInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const toss_boys_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable toss_boys_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_toss_boys_prologue_title[]; // Animation: Text (Toss Boys)
extern const struct SequenceData s_jingle_toss_seqData;

// Functions:
extern void func_080478d8(void);    // [func_080478d8] GFX_INIT Func_02
extern void func_080478e8(void);    // [func_080478e8] GFX_INIT Func_01
extern void func_08047918(void);    // [func_08047918] GFX_INIT Func_00
extern void toss_boys_prologue_engine_start(u32);     // [func_08047948] MAIN - Init
extern void func_080479a4(void);    // [func_080479a4] ENGINE Func_00   (STUB)
extern void toss_boys_prologue_engine_update(void);    // [func_080479a8] MAIN - Update    (STUB)
extern void toss_boys_prologue_engine_stop(void);    // [func_080479ac] MAIN - Close     (STUB)
extern void func_080479b0(u32);     // [func_080479b0] Event 0 - Set Animation Frame (Text)
