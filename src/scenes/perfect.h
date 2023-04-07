#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct PerfectSceneInfo {
    struct TextPrinter *printer;
    u32 scriptIsReady;
    s32 campaignID;
    char string[0x200];
};


// Scene Macros/Enums:


// Scene Data:
extern struct GraphicsTable perfect_certificate_gfx_table[];
extern struct CompressedGraphics *perfect_certificate_buffered_textures[];
extern const char *perfect_gift_directive_text[];
extern s8 unassigned_campaign_gift_songs[];


// Functions:
extern void perfect_scene_init_static_var(void); // Init. Static Variables
extern void perfect_scene_init_gfx3(void); // Graphics Init. 3
extern void perfect_scene_init_gfx2(void); // Graphics Init. 2
extern void perfect_scene_init_gfx1(void); // Graphics Init. 1
extern void perfect_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void unlock_all_unassigned_campaign_gift_songs(void);
extern void perfect_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void perfect_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 perfect_scene_script_is_ready(void); // Communicate with Script
extern void perfect_scene_close(void *sceneVar, s32 dataArg); // Scene Stop
