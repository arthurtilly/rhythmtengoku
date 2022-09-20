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
extern u32 D_089cdc40[]; // Gfx Null
extern u32 D_089cdc44[]; // GFX Struct
extern u32 D_089cdc8c[]; // ...another GFX-related Null..?
extern const struct Animation *D_089cdc90[5]; // Button Animations (Highlighted)
extern const struct Animation *D_089cdca4[5]; // Button Animations

// extern ? func_0801242c(?); // [func_0801242c] menu_init
// extern ? func_08012438(?); // [func_08012438] menu_init_gfx_2
// extern ? func_08012464(?); // [func_08012464] menu_init_gfx_1
// extern ? func_08012494(?); // [func_08012494] menu_init_gfx_0
// extern ? func_080124d0(?); // [func_080124d0] menu_scene_init
// extern ? func_080125f8(?); // [func_080125f8] menu_scene_stub
// extern ? func_080125fc(?); // [func_080125fc] menu_scene_loop
// extern ? func_080127d0(?); // [func_080127d0] menu_screen_ready
// extern ? func_080127ec(?); // [func_080127ec] menu_scene_stop
