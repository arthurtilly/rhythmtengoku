#pragma once

#include "global.h"
#include "scenes.h"
#include "src/memory.h"

// Scene Macros/Enums:


// Scene Types:
struct DataCheckSceneData {
    /* add fields here */
};


// Scene Data:
extern union SceneObject data_check_scene_objects[];
extern struct GraphicsTable data_check_gfx_table[];
extern struct CompressedGraphics *data_check_buffered_textures[];
extern const char D_08050b38[];
extern const char D_08050b4c[];
extern const char D_08050b50[];
extern const char D_08050b58[];
extern const char D_08050b5c[];
extern const char D_08050b64[];
extern const char D_08050b74[];
extern const char D_08050b80[];
extern const char D_08050b84[];
extern const char D_08050b94[];
extern const char D_08050b9c[];
extern const char D_08050ba4[];
extern const char D_08050bb4[];
extern const char D_08050bbc[];
extern const char D_08050bc4[];
extern const char D_08050bc8[];


// Functions:
// extern ? func_08011530(?); // Initialise Static Variables
// extern ? func_08011534(?); // Graphics Init. 3
// extern ? func_08011580(?); // Graphics Init. 2
// extern ? func_080115b0(?); // Graphics Init. 1
// extern ? func_080115d0(?); // Scene Start
// extern ? func_08011690(?); // Scene Update (Paused)
// extern ? func_08011694(?); // Scene Update (Active)
// extern ? func_08011728(?); // Communicate with Script
// extern ? func_08011744(?); // ?
// extern ? func_08011820(?); // ?
// extern ? func_08011a08(?); // Scene Stop
