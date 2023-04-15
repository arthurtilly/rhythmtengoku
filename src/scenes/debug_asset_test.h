#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct AssetTestSceneInfo {
    /* add fields here */
};


// Scene Macros/Enums:


// Scene Data:
extern union SceneObject asset_test_scene_objects[];
extern struct GraphicsTable asset_test_gfx_table[];
extern struct CompressedGraphics *asset_test_buffered_textures[];
extern struct GraphicsTable asset_test_gfx_table_dupe[];


// Functions:
// extern ? func_0801ea84(?); // Init. Static Variables
// extern ? func_0801ea88(?); // Graphics Init. 3
// extern ? func_0801eab4(?); // Graphics Init. 2
// extern ? func_0801eae4(?); // Graphics Init. 1
// extern ? func_0801eb20(?); // Scene Start
// extern ? func_0801eb90(?); // Scene Update (Paused)
// extern ? func_0801eb94(?); // Scene Update (Active)
// extern ? func_0801ed20(?); // Scene Can Update
// extern ? func_0801ed3c(?); // Scene Close
