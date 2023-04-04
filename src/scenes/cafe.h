#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct CafeSceneInfo {
    u32 scriptIsReady;
    struct TextPrinter *printer;
    s16 textAdvIcon;
    u16 nextDialogueTask;
    u8 textAdvReady;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10[5];
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u8 bgEvent;
    u8 textAdvHold;
    u8 queryEnabled;
    s8 queryResult;
    s16 levelToClear;
    const char **dialogue;
    char string[0];
};

extern struct S_030055a0 {
    struct CafeSub {
        u8 levelID;
        u8 unk1;
        u8 unk2;
        u16 unk4;
        u16 unk6;
    } unk0[5];
    u8 totalMedals;
    u8 unk29;
    u16 currentFlow;
    u16 unk2C;
} D_030055a0;


// Scene Macros/Enums:
#define END_OF_DIALOGUE NULL


// Scene Data:
extern struct Animation *cafe_cursor_option_anim[];
extern u8 cafe_barista_denied_levels[];
extern struct GraphicsTable cafe_gfx_table[];
extern struct CompressedGraphics *cafe_buffered_textures[];
extern const char **cafe_random_conversation_pool[];
extern const char *cafe_dialogue_first_visit[];
extern const char *cafe_dialogue_come_back_later[];
extern const char *cafe_dialogue_keep_trying[];
extern const char *cafe_dialogue_shouts_praise[];
extern const char *cafe_dialogue_shouts_cheer[];
extern const char *cafe_dialogue_practicing_perfect[];
extern const char *cafe_dialogue_not_practicing_perfect[];
extern const char *cafe_dialogue_all_perfects_clear[];


// Functions:
extern void func_080107a8(struct CafeSub *data); // Set unk4 and unk6
extern void func_080107c8(struct CafeSub *data, s32 levelID); // Set Level ID, unk1 and unk2
extern struct CafeSub *func_080107dc(s32 levelID); // Allocate ?
extern struct CafeSub *func_0801082c(s32 levelID); // Get ?
extern void func_08010854(void); // Init. D_030055a0
extern void func_080108a0(s32 levelID); // ? (called by Results Scene while saving to cart)
extern void func_080108c8(s32 levelID); // ? (called by Game Select Scene after clear or medal)
extern void func_080108e8(s32 levelID); // ?
extern void func_08010904(u32 arg0, u32 arg1); // Init. ?
extern void func_08010938(void); // ?
extern void func_080109cc(void); // Init. ?
extern void func_08010a04(void); // Remove Level if (unk2 != 0)

extern void func_08010a28(void); // Init. ?
extern void func_08010a3c(void); // Start Text Advance Options (Script Function)
extern void func_08010ae0(void); // Update Text Advance Options
extern u32 func_08010bc0(s32 levelID); // Check if Barista Can Clear Level
extern void func_08010be4(void); // Start of Loop (Script Function)
extern s32 func_080112dc(void); // Get BG Event (Script Function)
extern void func_080112e8(void); // Show Text Box
extern void func_080112f4(void); // Hide Text Box
extern void func_08011300(void); // Init. Text Printer
extern s32 func_080113a8(void); // Get Text Advance Hold Time (Script Function)
extern void func_080113b4(void); // Hide Text (Script Function)

extern void cafe_scene_init_static_var(void); // Init. Static Variables
extern void cafe_scene_init_gfx3(void); // Graphics Init. 3
extern void cafe_scene_init_gfx2(void); // Graphics Init. 2
extern void cafe_scene_init_gfx1(void); // Graphics Init. 1
extern void cafe_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void cafe_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void cafe_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 cafe_scene_script_is_ready(void); // Communicate with Script
extern void func_08011510(struct CompressedGraphics *texture); // Load Texture (Script Function)
extern void cafe_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
