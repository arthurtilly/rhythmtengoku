#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct OptionsSceneInfo {
    /* add fields here */
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable options_gfx_table[];
extern struct CompressedGraphics *options_buffered_textures[];
extern const char options_data_clear_confirm_text[];
extern const char *options_desc_text[];
extern struct Animation *options_sound_mode_anim[][2];


// Functions:
// extern ? func_080162c8(?); // Init. Static Variables
// extern ? func_080162cc(?); // Graphics Init. 3
// extern ? func_080162f8(?); // Graphics Init. 2
// extern ? func_08016328(?); // Graphics Init. 1
// extern ? func_08016364(?); // Scene Start
// extern ? func_080165f0(?); // Scene Update (Paused)
// extern ? func_080165f4(?);
// extern ? func_08016620(?);
// extern ? func_0801685c(?);
// extern ? func_080169b8(?); // Scene Update (Active)
// extern ? func_080169fc(?);
// extern ? func_08016a18(?); // Scene Stop
