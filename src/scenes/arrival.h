#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct ArrivalSceneData {
    u32 scriptIsReady;
    s16 dialogOptions;
    s8 selectedOption;
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable arrival_gfx_table[];
extern struct CompressedGraphics *arrival_buffered_textures[];
extern char arrival_default_title[];
extern struct Animation *arrival_option_anim[];


// Functions:
extern void arrival_scene_init_static_var(void);
extern void arrival_scene_init_gfx3(void);
extern void arrival_scene_init_gfx2(void);
extern void arrival_scene_init_gfx1(void);
extern void arrival_scene_start(void *sVar, s32 dArg);
extern void arrival_scene_paused(void *sVar, s32 dArg);
extern void arrival_scene_update(void *sVar, s32 dArg);
extern u32 arrival_scene_can_receive_inputs(void);
extern void arrival_scene_stop(void *sVar, s32 dArg);
extern void arrival_scene_show_options(void);
