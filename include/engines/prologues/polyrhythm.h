#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: POLYRHYTHM  //  //  //


// Types:
struct ProloguePolyrhythmInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_polyrhythm_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_polyrhythm_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_polyrhythm_title[]; // Animation: Text (Polyrhythm)
extern const struct SequenceData s_jingle_poli_seqData;

// Functions:
extern void func_0804642c(void);    // [func_0804642c] GFX_INIT Func_02
extern void func_0804643c(void);    // [func_0804643c] GFX_INIT Func_01
extern void func_0804646c(void);    // [func_0804646c] GFX_INIT Func_00
extern void func_0804649c(u32);     // [func_0804649c] MAIN - Init
extern void func_080464f8(void);    // [func_080464f8] ENGINE Func_00   (STUB)
extern void func_080464fc(void);    // [func_080464fc] MAIN - Update    (STUB)
extern void func_08046500(void);    // [func_08046500] MAIN - Close     (STUB)
extern void func_08046504(u32);     // [func_08046504] Event 0 - Set Animation Frame (Text)
