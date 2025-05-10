#pragma once

#include "global.h"
#include "scenes.h"


// MACROS
#define gPerfect ((struct PerfectSceneData *)gCurrentSceneData)


// TYPES
struct PerfectSceneData {
    struct TextPrinter *printer;
    u32 inputsEnabled;
    s32 campaignID;
    char string[0x200];
};


// DATA
extern struct GraphicsTable perfect_certificate_gfx_table[];
extern struct CompressedData *perfect_certificate_buffered_textures[];
extern const char *perfect_gift_directive_text[];
extern s8 unassigned_campaign_gift_songs[];


// FUNCTIONS
extern void perfect_scene_init_memory(void);
extern void perfect_scene_init_gfx3(void);
extern void perfect_scene_init_gfx2(void);
extern void perfect_scene_init_gfx1(void);
extern void perfect_scene_start(void *sVar, s32 dArg);
extern void unlock_all_unassigned_campaign_gift_songs(void);
extern void perfect_scene_paused(void *sVar, s32 dArg);
extern void perfect_scene_update(void *sVar, s32 dArg);
extern u32  perfect_scene_inputs_enabled(void);
extern void perfect_scene_stop(void *sVar, s32 dArg);
