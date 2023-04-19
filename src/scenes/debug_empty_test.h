#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct TemplateSceneInfo {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 scriptIsReady;
};


// Scene Data:
extern union SceneObject template_scene_objects[];
extern struct GraphicsTable template_scene_gfx_table[];
extern struct CompressedGraphics *template_scene_buffered_textures[];


// Functions:
extern void template_scene_init_static_var(void); // Init. Static Variables
extern void template_scene_init_gfx3(void); // Graphics Init. 3
extern void template_scene_init_gfx2(void); // Graphics Init. 2
extern void template_scene_init_gfx1(void); // Graphics Init. 1
extern void template_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void template_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void template_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 template_scene_script_is_ready(void); // Communicate with Script
extern void template_scene_stop(void *sceneVar, s32 dataArg); // Scene Close
