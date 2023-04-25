#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct EpilogueSceneInfo {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 scriptIsReady;
    const struct GraphicsTable *gfxTable;
    struct SequenceData *jingle;
};


// Scene Macros/Enums:


// Scene Data:
extern union SceneObject epilogue_scene_objects[];
extern struct CompressedGraphics *epilogue_buffered_textures[];
extern struct Beatscript epilogue_end_script[];
extern struct SequenceData *epilogue_jingles[];


// Functions:
extern void epilogue_scene_init_static_var(void); // Init. Static Variables
extern void epilogue_scene_init_gfx3(void); // Graphics Init. 3
extern void epilogue_scene_init_gfx2(void); // Graphics Init. 2
extern void epilogue_scene_init_gfx1(void); // Graphics Init. 1
extern void epilogue_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void epilogue_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void epilogue_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 epilogue_scene_script_is_ready(void); // Communicate with Script
extern void epilogue_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
