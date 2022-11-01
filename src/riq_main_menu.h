#pragma once

#include "global.h"
#include "scenes.h"

// Used Static Variables:
extern s8 D_030055d8; // Main Menu static variable (currently-selected button)

// Scene Macros/Enums:

// OAM Animations:
extern const struct Animation D_0890a3c4[]; // Blank

// Palettes:

// Sound Effects:
extern const struct SequenceData s_menu_cursor2_seqData;
extern const struct SequenceData s_menu_kettei1_seqData;

// Scene Data:

// Scene Definition Data:
extern u32 D_089cdc40[]; // some unused sprite/text sort of thing
extern const struct GraphicsTable D_089cdc44[]; // Graphics Table
extern const struct CompressedGraphics *D_089cdc8c[]; // Buffered Textures List
extern const struct Animation *D_089cdc90[5]; // Button Animations (Highlighted)
extern const struct Animation *D_089cdca4[5]; // Button Animations

extern void func_0801242c(void); // [func_0801242c] menu_init
extern void func_08012438(void); // [func_08012438] menu_init_gfx_2
extern void func_08012464(void); // [func_08012464] menu_init_gfx_1
extern void func_08012494(void); // [func_08012494] menu_init_gfx_0
extern void func_080124d0(u32);  // [func_080124d0] menu_scene_init
extern void func_080125f8(u32);  // [func_080125f8] menu_scene_stub
extern void func_080125fc(u32);  // [func_080125fc] menu_scene_loop
extern u32  func_080127d0(void); // [func_080127d0] menu_screen_ready
extern void func_080127ec(u32);  // [func_080127ec] menu_scene_stop
