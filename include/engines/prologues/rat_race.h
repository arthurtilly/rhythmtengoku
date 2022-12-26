#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: RAT RACE  //  //  //


// Types:
struct PrologueRatRaceInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
    s16 ratSprite;  // Sprite: Rat
};

// Assets:
extern const struct CompressedGraphics *const prologue_rat_race_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_rat_race_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_rat_race_title[]; // Animation: Text (Rat Race)
extern const struct Animation anim_prologue_rat_race_rat[]; // Animation: Rat
extern const struct SequenceData s_jingle_rat_seqData;

// Functions:
extern void func_08047164(void);    // [func_08047164] GFX_INIT Func_02
extern void func_08047174(void);    // [func_08047174] GFX_INIT Func_01
extern void func_080471a4(void);    // [func_080471a4] GFX_INIT Func_00
extern void func_080471d4(u32);     // [func_080471d4] MAIN - Init
extern void func_08047250(void);    // [func_08047250] ENGINE Func_00   (STUB)
extern void func_08047254(void);    // [func_08047254] MAIN - Update    (STUB)
extern void func_08047258(void);    // [func_08047258] MAIN - Close     (STUB)
extern void func_0804725c(u32);     // [func_0804725c] Event 0 - Set Animation Frame (Text)
extern void func_08047280(void);    // [func_08047280] Event 1 - Play Animation (Rat)
