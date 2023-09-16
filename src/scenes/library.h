#pragma once

#include "global.h"
#include "scenes.h"

// Scene Macros/Enums:


// Scene Types:
struct LibrarySceneData {
    /* add fields here */
};


// Scene Data:
extern struct GraphicsTable library_gfx_table[];
extern struct CompressedGraphics *library_buffered_textures[];
extern char library_error_text[];
extern struct Animation *library_option_anim[];


// Functions:
// extern ? func_08010490(?); // Initialise Static Variables
// extern ? func_08010494(?); // Graphics Init. 3
// extern ? func_080104c0(?); // Graphics Init. 2
// extern ? func_080104f0(?); // Graphics Init. 1
// extern ? func_0801052c(?); // Scene Start
// extern ? func_08010688(?); // Scene Update (Paused)
// extern ? func_0801068c(?); // Scene Update (Active)
// extern ? func_0801075c(?); // ?
// extern ? func_08010778(?); // Scene Stop
// extern ? func_08010788(?); // ? (Script Function)
