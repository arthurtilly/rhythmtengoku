#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct MainMenuSceneInfo {
    struct BitmapFontBG *bmpFontBG;
    struct BitmapFontOBJ *bmpFontOBJ;
    u32 scriptIsReady; // Set to FALSE during screen fade-in/out.
    s16 buttons[5];
    s16 bgX;
    s16 bgY;
    u8 unk1A;
    u8 loadingOptionsMenu;
};


// Scene Macros/Enums:
#define TOTAL_MAIN_MENU_BUTTONS 5


// Scene Data:
extern union SceneObject main_menu_scene_objects[];
extern struct GraphicsTable main_menu_gfx_table[];
extern struct CompressedGraphics *main_menu_buffered_textures[];
extern struct Animation *main_menu_button_on_anim[];
extern struct Animation *main_menu_button_off_anim[];


// Functions:
extern void main_menu_init_static_var(void); // Init. Static Variables
extern void main_menu_scene_init_gfx3(void); // Graphics Init. 3
extern void main_menu_scene_init_gfx2(void); // Graphics Init. 2
extern void main_menu_scene_init_gfx1(void); // Graphics Init. 1
extern void main_menu_scene_start(void *sceneVar, s32 dataArg); // Scene Start
extern void main_menu_scene_paused(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void main_menu_scene_update(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32  main_menu_scene_script_ready(void); // Communicate with Script
extern void main_menu_scene_stop(void *sceneVar, s32 dataArg); // Scene Stop
