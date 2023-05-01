#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct ReadErrorSceneData {
    u32 scriptIsReady;
};


// Scene Data:
extern struct GraphicsTable read_error_gfx_table[];
extern struct CompressedGraphics *read_error_buffered_textures[];


// Functions:
extern void read_error_scene_init_gfx3(void); // Graphics Init. 3
extern void read_error_scene_init_gfx2(void); // Graphics Init. 2
extern void read_error_scene_init_gfx1(void); // Graphics Init. 1
extern void read_error_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void read_error_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 read_error_scene_can_receive_inputs(void); // Communicate with Script
extern void read_error_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
