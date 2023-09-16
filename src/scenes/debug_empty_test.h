#pragma once

#include "global.h"
#include "scenes.h"

// Scene Macros/Enums:


// Scene Types:
struct EmptyTestSceneData {
    /* add fields here */
};


// Scene Data:
extern union SceneObject empty_test_scene_objects[];
extern struct GraphicsTable empty_test_gfx_table[];
extern struct CompressedGraphics *empty_test_buffered_textures[];


// Functions:
// extern ? func_0801ed4c(?); // Init. Static Variables
// extern ? func_0801ed50(?); // Graphics Init. 3
// extern ? func_0801ed7c(?); // Graphics Init. 2
// extern ? func_0801edac(?); // Graphics Init. 1
// extern ? func_0801edc8(?); // Scene Start
// extern ? func_0801ee38(?); // Scene Update (Paused)
// extern ? func_0801ee3c(?); // Scene Update (Active)
// extern ? func_0801ee6c(?); // Scene Can Update
// extern ? func_0801ee88(?); // Scene Close
