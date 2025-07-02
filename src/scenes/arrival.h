#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gArrival ((struct ArrivalSceneData *)gCurrentSceneData)


// TYPES
struct ArrivalSceneData {
    u32 inputsEnabled;
    s16 dialogOptions;
    s8 selectedOption;
};


// DATA
extern struct GraphicsTable arrival_gfx_table[];
extern struct CompressedData *arrival_buffered_textures[];
extern char arrival_default_title[];
extern struct Animation *arrival_option_anim[];


// FUNCTIONS
extern void arrival_scene_init_memory(void);
extern void arrival_scene_init_gfx3(void);
extern void arrival_scene_init_gfx2(void);
extern void arrival_scene_init_gfx1(void);
extern void arrival_scene_start(void *sVar, s32 dArg);
extern void arrival_scene_paused(void *sVar, s32 dArg);
extern void arrival_scene_update(void *sVar, s32 dArg);
extern u32  arrival_scene_inputs_enabled(void);
extern void arrival_scene_stop(void *sVar, s32 dArg);
extern void arrival_scene_show_options(void);
