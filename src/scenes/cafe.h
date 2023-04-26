#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct CafeSceneData {
    /* add fields here */
};


// Scene Macros/Enums:
#define END_OF_DIALOGUE NULL


// Scene Data:
extern struct Animation *cafe_cursor_option_anim[];
extern u8 D_089cd47c[];
extern struct GraphicsTable cafe_gfx_table[];
extern struct CompressedGraphics *cafe_buffered_textures[];
extern const char D_0805062c[];
extern const char D_08050650[];
extern const char D_08050688[];
extern const char D_080506d8[];
extern const char D_08050714[];
extern const char D_08050718[];
extern const char D_0805071c[];
extern const char D_08050728[];
extern const char D_08050730[];
extern const char D_08050738[];
extern const char D_0805075c[];
extern const char D_0805076c[];
extern const char D_08050788[];
extern const char D_08050794[];
extern const char D_0805079c[];
extern const char D_080507b8[];
extern const char D_080507d8[];
extern const char D_080507e8[];
extern const char D_08050800[];
extern const char D_08050828[];
extern const char D_0805083c[];
extern const char D_08050874[];
extern const char D_080508b0[];
extern const char D_08050944[];
extern const char D_08050964[];
extern const char D_080509a4[];
extern const char D_080509ec[];
extern const char D_08050a10[];
extern const char D_08050a98[];
extern const char D_08050acc[];
extern const char D_08050b14[];


// Functions:
// extern ? func_080107a8(?); // ?
// extern ? func_080107c8(?); // ?
// extern ? func_080107dc(?); // ?
// extern ? func_0801082c(?); // ?
// extern ? func_08010854(?); // ?
// extern ? func_080108a0(?); // ?
// extern ? func_080108c8(?); // ?
// extern ? func_080108e8(?); // ?
// extern ? func_08010904(?); // ?
// extern ? func_08010938(?); // ?
// extern ? func_080109cc(?); // ?
// extern ? func_08010a04(?); // ?
// extern ? func_08010a28(?); // ?
// extern ? func_08010a3c(?); // ?
// extern ? func_08010ae0(?); // ?
// extern ? func_08010bc0(?); // ?
// extern ? func_08010be4(?); // ?
// extern ? func_080112dc(?); // ?
// extern ? func_080112e8(?); // ?
// extern ? func_080112f4(?); // ?
// extern ? func_08011300(?); // ?
// extern ? func_080113a8(?); // ?
// extern ? func_080113b4(?); // ?

extern void cafe_scene_init_static_var(void); // Init. Static Variables
extern void cafe_scene_init_gfx3(void); // Graphics Init. 3
extern void cafe_scene_init_gfx2(void); // Graphics Init. 2
extern void cafe_scene_init_gfx1(void); // Graphics Init. 1
extern void cafe_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void cafe_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void cafe_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 cafe_scene_script_is_ready(void); // Communicate with Script
// extern ? func_08011510(?); // ? (Script Function)
extern void cafe_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
