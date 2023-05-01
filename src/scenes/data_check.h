#pragma once

#include "global.h"
#include "scenes.h"
#include "src/memory.h"

// Scene Types:
struct DataCheckSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 scriptIsReady;
    s16 textLineSprites[10];
    s16 totalPages;
    s16 currentPage;
};


// Scene Data:
extern union SceneObject data_check_scene_objects[];
extern struct GraphicsTable data_check_gfx_table[];
extern struct CompressedGraphics *data_check_buffered_textures[];
extern struct Scene scene_debug_menu;


// Functions:
extern void data_check_scene_init_static_var(void);
extern void data_check_scene_init_gfx3(void);
extern void data_check_scene_init_gfx2(void);
extern void data_check_scene_init_gfx1(void);
extern void data_check_scene_start(void *sVar, s32 dArg);
extern void data_check_scene_paused(void *sVar, s32 dArg);
extern void data_check_scene_update(void *sVar, s32 dArg);
extern u32 data_check_scene_can_receive_inputs(void);
extern void data_check_print_line(u32 line, u32 palette, const char *string);
extern void data_check_print_page(s32 id);
extern void data_check_scene_stop(void *sVar, s32 dArg);
