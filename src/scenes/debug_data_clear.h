#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct DataClearSceneInfo {
    /* add fields here */
};


// Scene Macros/Enums:


// Scene Data:
extern union SceneObject data_clear_scene_objects[];
extern struct GraphicsTable data_clear_gfx_table[];
extern struct CompressedGraphics *data_clear_buffered_textures[];


// Functions:
// extern ? func_0801e950(?); // Init. Static Variables
// extern ? func_0801e954(?); // Graphics Init. 3
// extern ? func_0801e980(?); // Graphics Init. 2
// extern ? func_0801e9b0(?); // Graphics Init. 1
// extern ? func_0801e9cc(?); // Scene Start
// extern ? func_0801ea50(?); // Scene Update (Paused)
// extern ? func_0801ea54(?); // Scene Update (Active)
// extern ? func_0801ea58(?); // Scene Can Update
// extern ? func_0801ea74(?); // Scene Stop
