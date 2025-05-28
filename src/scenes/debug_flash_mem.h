#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gFlashMemoryTest ((struct FlashMemoryTestSceneData *)gCurrentSceneData)


// TYPES
struct FlashMemoryTestSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 inputsEnabled;
    u32 unkC;
};


// DATA
extern union SceneObject flash_mem_test_scene_objects[];
extern struct GraphicsTable flash_mem_test_gfx_table[];
extern struct CompressedData *flash_mem_test_buffered_textures[];


// FUNCTIONS
extern void flash_test_scene_init_memory(void);
extern void flash_test_scene_init_gfx3(void);
extern void flash_test_scene_init_gfx2(void);
extern void flash_test_scene_init_gfx1(void);
extern void flash_test_scene_start(void *sVar, s32 dArg);
extern void flash_test_scene_paused(void *sVar, s32 dArg);
extern void flash_test_scene_update(void *sVar, s32 dArg);
extern u32  flash_test_scene_inputs_enabled(void);
extern void func_0801e928(u32 arg);
extern void flash_test_scene_stop(void *sVar, s32 dArg);
