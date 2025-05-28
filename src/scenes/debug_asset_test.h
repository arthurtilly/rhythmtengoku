#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gAssetTest ((struct AssetTestSceneData *)gCurrentSceneData)


// TYPES
struct AssetTestSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 inputsEnabled;
};


// DATA
extern union SceneObject asset_test_scene_objects[];
extern struct GraphicsTable asset_test_gfx_table[];
extern struct CompressedData *asset_test_buffered_textures[];
extern struct GraphicsTable asset_test_gfx_table_dupe[];


// FUNCTIONS
extern void asset_test_scene_init_memory(void);
extern void asset_test_scene_init_gfx3(void);
extern void asset_test_scene_init_gfx2(void);
extern void asset_test_scene_init_gfx1(void);
extern void asset_test_scene_start(void *sVar, s32 dArg);
extern void asset_test_scene_paused(void *sVar, s32 dArg);
extern void asset_test_scene_update(void *sVar, s32 dArg);
extern u32  asset_test_scene_inputs_enabled(void);
extern void asset_test_scene_stop(void *sVar, s32 dArg);
