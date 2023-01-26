#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: QUIZ SHOW  //  //  //


// Types:
struct PrologueQuizShowInfo {
    u8  ver;        // Value:  Version
    s16 textSprite; // Sprite: Text
};

// Assets:
extern const struct CompressedGraphics *const prologue_quiz_show_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable prologue_quiz_show_gfx_table[]; // Graphics Table
extern const struct Animation anim_prologue_quiz_title[]; // Animation: Text (Quiz Show)
extern const struct SequenceData s_jingle_quiz_seqData;

// Functions:
extern void func_08046528(void);    // [func_08046528] GFX_INIT Func_02
extern void func_08046538(void);    // [func_08046538] GFX_INIT Func_01
extern void func_08046568(void);    // [func_08046568] GFX_INIT Func_00
extern void func_08046598(u32);     // [func_08046598] MAIN - Init
extern void func_080465f8(void);    // [func_080465f8] ENGINE Func_00   (STUB)
extern void func_080465fc(void);    // [func_080465fc] MAIN - Update    (STUB)
extern void func_08046600(void);    // [func_08046600] MAIN - Close     (STUB)
extern void func_08046604(u32);     // [func_08046604] Event 0 - Set Animation Frame (Text)
