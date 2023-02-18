#pragma once

#include "global.h"
#include "engines.h"


  //  //  //  PROLOGUE: SPACE DANCE  //  //  //


// Types:
struct SpaceDancePrologueInfo {
    u8  ver;         // Value:  Version
    s16 textSprite;  // Sprite: Text
    s16 facesSprite; // Sprite: Faces
    s16 starSprite;  // Sprite: Star
};

// Assets:
extern const struct CompressedGraphics *const space_dance_prologue_buffered_textures[]; // Buffered Textures
extern const struct GraphicsTable space_dance_prologue_gfx_table[]; // Graphics Table
extern const struct Animation anim_space_dance_prologue_title[]; // Animation: Text (Space Dance)
extern const struct Animation anim_space_dance_prologue_faces[]; // Animation: Faces
extern const struct Animation anim_space_dance_prologue_star[]; // Animation: Star

// Functions:
extern void func_080474dc(void);    // [func_080474dc] GFX_INIT Func_02
extern void func_080474ec(void);    // [func_080474ec] GFX_INIT Func_01
extern void func_0804751c(void);    // [func_0804751c] GFX_INIT Func_00
extern void space_dance_prologue_engine_start(u32);     // [func_0804754c] MAIN - Init
extern void func_08047624(void);    // [func_08047624] ENGINE Func_00   (STUB)
extern void space_dance_prologue_engine_update(void);    // [func_08047628] MAIN - Update    (STUB)
extern void space_dance_prologue_engine_stop(void);    // [func_0804762c] MAIN - Close     (STUB)
extern void func_08047630(u32);     // [func_08047630] Event 0 - Animate Sprite { 0 = Text; 1 = Faces; 2 = Star }
