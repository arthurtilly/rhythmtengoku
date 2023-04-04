#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct CafeSceneInfo {
    u32 scriptIsReady;
    struct TextPrinter *printer;
    s16 textAdvIcon;
    u16 nextDialogueTask;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
    u8 unk10[5];
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    s8 unk1F;
    s16 unk20;
    const char **dialogue;
    char string[0];
};

extern struct S_030055a0 {
    struct CafeSub {
        u8 levelID;
        u8 unk1;
        u8 unk2;
        u16 unk4;
    } unk0[5];
    u32 null28;
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
// extern ? func_080107a8(?); // ?
// extern ? func_080107c8(?); // ?
// extern ? func_080107dc(?); // ?
// extern ? func_0801082c(?); // ?
// extern ? func_08010854(?); // ?
// extern ? func_080108a0(?); // ?
// extern ? func_080108c8(?); // ?
// extern ? func_080108e8(?); // ?
extern void func_08010904(u32 arg0, u32 arg1); // Init. ?
extern void func_08010938(void); // ?
// extern ? func_080109cc(?); // ?
extern void func_08010a04(void); // Remove Level if (unk2 != 0)
extern void func_08010a28(void); // Init. ?
// extern ? func_08010a3c(?); // First Switch Case 0 (Script Function)
// extern ? func_08010ae0(?); // ?
extern u32 func_08010bc0(s32 levelID); // Check if Barista Can Clear Level
extern void func_08010be4(void); // Start of Loop (Script Function)
// extern ? func_080112dc(?); // Second Switch Argument (Script Function)
extern void func_080112e8(); // Show Text Box
extern void func_080112f4(); // Hide Text Box
extern void func_08011300(void); // Init. Text Printer
// extern ? func_080113a8(?); // First Switch Argument (Script Function)
// extern ? func_080113b4(?); // Middle of Loop (Script Function)

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
