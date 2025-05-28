#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gTemplate ((struct TemplateSceneData *)gCurrentSceneData)


// TYPES
struct TemplateSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 inputsEnabled;
};


// DATA
extern union SceneObject template_scene_objects[];
extern struct GraphicsTable template_scene_gfx_table[];
extern struct CompressedData *template_scene_buffered_textures[];


// FUNCTIONS
extern void template_scene_init_memory(void);
extern void template_scene_init_gfx3(void);
extern void template_scene_init_gfx2(void);
extern void template_scene_init_gfx1(void);
extern void template_scene_start(void *sVar, s32 dArg);
extern void template_scene_paused(void *sVar, s32 dArg);
extern void template_scene_update(void *sVar, s32 dArg);
extern u32  template_scene_inputs_enabled(void);
extern void template_scene_stop(void *sVar, s32 dArg);
