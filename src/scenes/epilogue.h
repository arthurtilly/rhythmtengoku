#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct EpilogueSceneData {
    /* add fields here */
};


// Scene Macros/Enums:


// Scene Data:
extern union SceneObject epilogue_scene_objects[];
extern struct CompressedGraphics *epilogue_buffered_textures[];
extern const struct BeatScript epilogue_end_script[];
extern struct SequenceData *epilogue_jingles[];


// Functions:
// extern ? func_0801a0ec(?); // Init. Static Variables
// extern ? func_0801a0f0(?); // Graphics Init. 3
// extern ? func_0801a140(?); // Graphics Init. 2
// extern ? func_0801a174(?); // Graphics Init. 1
// extern ? func_0801a1b0(?); // Scene Start
// extern ? func_0801a310(?); // Scene Update (Paused)
// extern ? func_0801a314(?); // Scene Update (Active)
// extern ? func_0801a354(?); // ?
// extern ? func_0801a370(?); // Scene Stop
