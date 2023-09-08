#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gWarning ((struct WarningSceneData *)gCurrentSceneData)


// TYPES
struct WarningSceneData {
    u32 inputsEnabled;
    u32 timer;
};


// DATA
extern struct GraphicsTable warning_gfx_table[];


// FUNCTIONS
extern void warning_scene_render_anim(void);
extern void warning_scene_stop(void *sVar, s32 dArg);
extern void warning_scene_init_gfx3(void);
extern void warning_scene_init_gfx2(void);
extern void warning_scene_init_gfx1(void);
extern void warning_scene_start(void *sVar, s32 dArg);
extern void warning_scene_update(void *sVar, s32 dArg);
