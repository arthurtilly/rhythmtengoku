#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gDataClear ((struct DataClearSceneData *)gCurrentSceneData)


// TYPES
struct DataClearSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 inputsEnabled;
};


// DATA
extern union SceneObject data_clear_scene_objects[];
extern struct GraphicsTable data_clear_gfx_table[];
extern struct CompressedData *data_clear_buffered_textures[];


// FUNCTIONS
extern void data_clear_scene_init_memory(void);
extern void data_clear_scene_init_gfx3(void);
extern void data_clear_scene_init_gfx2(void);
extern void data_clear_scene_init_gfx1(void);
extern void data_clear_scene_start(void *sVar, s32 *dArg);
extern void data_clear_scene_paused(void *sVar, s32 *dArg);
extern void data_clear_scene_update(void *sVar, s32 *dArg);
extern u32  data_clear_scene_inputs_enabled(void);
extern void data_clear_scene_stop(void *sVar, s32 *dArg);
