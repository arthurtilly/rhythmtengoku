#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct DataClearSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 scriptIsReady;
};


// Scene Data:
extern union SceneObject data_clear_scene_objects[];
extern struct GraphicsTable data_clear_gfx_table[];
extern struct CompressedGraphics *data_clear_buffered_textures[];


// Functions:
extern void data_clear_scene_init_static_var(void);
extern void data_clear_scene_init_gfx3(void);
extern void data_clear_scene_init_gfx2(void);
extern void data_clear_scene_init_gfx1(void);
extern void data_clear_scene_start(void *sVar, s32 *dArg);
extern void data_clear_scene_paused(void *sVar, s32 *dArg);
extern void data_clear_scene_update(void *sVar, s32 *dArg);
extern u32 data_clear_scene_can_receive_inputs(void);
extern void data_clear_scene_stop(void *sVar, s32 *dArg);
