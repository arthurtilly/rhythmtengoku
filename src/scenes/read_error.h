#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gReadError ((struct ReadErrorSceneData *)gCurrentSceneData)


// TYPES
struct ReadErrorSceneData {
    u32 inputsEnabled;
};


// DATA
extern struct GraphicsTable read_error_gfx_table[];
extern struct CompressedData *read_error_buffered_textures[];


// FUNCTIONS
extern void read_error_scene_init_gfx3(void);
extern void read_error_scene_init_gfx2(void);
extern void read_error_scene_init_gfx1(void);
extern void read_error_scene_start(void *sVar, s32 dArg);
extern void read_error_scene_update(void *sVar, s32 dArg);
extern u32  read_error_scene_inputs_enabled(void);
extern void read_error_scene_stop(void *sVar, s32 dArg);
