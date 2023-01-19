#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: TRAM & PAULINE  //  //  //


// Types:
struct PrologueTramPaulineInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_tram_pauline_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_tram_pauline_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_tram_and_pauline_title[]; // Animation: Text (Tram & Pauline)
extern const struct Animation anim_prologue_tram_and_pauline_characters[]; // Animation: Tram & Pauline
extern const struct SequenceData s_jingle_tap_seqData;

// Functions:
extern void func_08047ad0(void);    // [func_08047ad0] GFX_INIT Func_02
extern void func_08047ae0(void);    // [func_08047ae0] GFX_INIT Func_01
extern void func_08047b10(void);    // [func_08047b10] GFX_INIT Func_00
extern void func_08047b40(u32);     // [func_08047b40] MAIN - Init
extern void func_08047bd0(void);    // [func_08047bd0] ENGINE Func_00   (STUB)
extern void func_08047bd4(void);    // [func_08047bd4] MAIN - Update    (STUB)
extern void func_08047bd8(void);    // [func_08047bd8] MAIN - Close     (STUB)
extern void func_08047bdc(void);    // [func_08047bdc] Event 0 - Play Animation (Text)
