#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: BON DANCE  //  //  //


// Types:
struct PrologueBonDanceInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_bon_dance_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_bon_dance_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_bon_odori_title[]; // Animation: Text (Bon Dance)
extern const struct SequenceData s_jingle_bon_seqData;

// Functions:
extern void func_08045408(void);    // [func_08045408] GFX_INIT Func_02
extern void func_08045418(void);    // [func_08045418] GFX_INIT Func_01
extern void func_08045448(void);    // [func_08045448] GFX_INIT Func_00
extern void func_08045478(u32);     // [func_08045478] MAIN - Init
extern void func_080454d4(void);    // [func_080454d4] ENGINE Func_00   (STUB)
extern void func_080454d8(void);    // [func_080454d8] MAIN - Update    (STUB)
extern void func_080454dc(void);    // [func_080454dc] MAIN - Close     (STUB)
extern void func_080454e0(void);    // [func_080454e0] Event 0 - Play Animation (Text)
