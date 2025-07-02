#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gEpilogue ((struct EpilogueSceneData *)gCurrentSceneData)


// TYPES
struct EpilogueSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 inputsEnabled;
    const struct GraphicsTable *gfxTable;
    struct SongHeader *jingle;
};


// DATA
extern union SceneObject epilogue_scene_objects[];
extern struct CompressedData *epilogue_buffered_textures[];
extern struct Beatscript epilogue_end_script[];
extern struct SongHeader *epilogue_jingles[];


// FUNCTIONS
extern void epilogue_scene_init_memory(void);
extern void epilogue_scene_init_gfx3(void);
extern void epilogue_scene_init_gfx2(void);
extern void epilogue_scene_init_gfx1(void);
extern void epilogue_scene_start(void *sVar, s32 dArg);
extern void epilogue_scene_paused(void *sVar, s32 dArg);
extern void epilogue_scene_update(void *sVar, s32 dArg);
extern u32  epilogue_scene_inputs_enabled(void);
extern void epilogue_scene_stop(void *sVar, s32 dArg);
