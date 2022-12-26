#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: SICK BEATS  //  //  //


// Types:
struct PrologueSickBeatsInfo {
    u8  ver;         // Value:  Version
    s16 textSprite;  // Sprite: Text
    s16 virusSprite; // Sprite: Virus
};

// Assets:
extern const struct CompressedGraphics *const prologue_sick_beats_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_sick_beats_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_sick_beats_title[]; // Animation: Text (Sick Beats)
extern const struct Animation anim_prologue_sick_beats_virus[]; // Animation: Virus
extern const struct SequenceData s_jingle_ghost_seqData;

// Functions:
extern void func_08047c08(void);    // [func_08047c08] GFX_INIT Func_02
extern void func_08047c18(void);    // [func_08047c18] GFX_INIT Func_01
extern void func_08047c48(void);    // [func_08047c48] GFX_INIT Func_00
extern void func_08047c78(u32);     // [func_08047c78] MAIN - Init
extern void func_08047d00(void);    // [func_08047d00] ENGINE Func_00   (STUB)
extern void func_08047d04(void);    // [func_08047d04] MAIN - Update    (STUB)
extern void func_08047d08(void);    // [func_08047d08] MAIN - Close     (STUB)
extern void func_08047d0c(void);    // [func_08047d0c] Event 0 - Play Animation (Text), Play Animation (Virus)
