#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct WarningSceneInfo {
    u32 scriptIsReady;
    u32 timer;
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable warning_gfx_table[];


// Functions:
extern void warning_scene_render_anim(void); // (Script Function)
extern void warning_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
extern void warning_scene_init_gfx3(void); // Graphics Init. 3
extern void warning_scene_init_gfx2(void); // Graphics Init. 2
extern void warning_scene_init_gfx1(void); // Graphics Init. 1
extern void warning_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void warning_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
