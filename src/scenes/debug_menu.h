#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct DebugMenuSceneData {
    /* add fields here */
};

struct DebugMenuEntry {
    struct Scene *scene;
    const char *label;
};

#define END_OF_DEBUG_ENTRIES { NULL, NULL }


// Scene Macros/Enums:


// Scene Data:
extern union SceneObject debug_menu_scene_objects[];
extern struct GraphicsTable debug_menu_gfx_table[];
extern struct CompressedGraphics *debug_menu_buffered_textures[];
extern const char D_0805966c[];
extern const char D_08059680[];
extern const char D_08059684[];
extern const char D_08059f8c[];
extern char debug_menu_fullwidth_char[];


// Functions:
// extern ? func_0801e100(?); // Init. Static Variables
// extern ? func_0801e154(?); // ?
// extern ? func_0801e174(?); // Graphics Init. 3
// extern ? func_0801e1a0(?); // Graphics Init. 2
// extern ? func_0801e1d0(?); // Graphics Init. 1
// extern ? func_0801e1f0(?); // Scene Start
// extern ? func_0801e3b4(?); // Scene Update (Paused)
// extern ? func_0801e3b8(?); // Scene Update (Active)
// extern ? func_0801e4c4(?); // Scene Can Update
// extern ? func_0801e4e0(?); // Scene Stop
// extern ? func_0801e4f4(?); // ?
