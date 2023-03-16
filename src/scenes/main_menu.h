#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct MainMenuSceneInfo {
    struct BitmapFontBG *font2;
    struct BitmapFontOBJ *font1;
    u32 screenReady; // Set to FALSE during screen fade-in/out.
    u16 buttons[5];
    s16 bgX;
    s16 bgY;
    u8 unk1A;
    u8 loadingOptionsMenu;
};


// Scene Static Variables:
extern s8 D_030055d8; // Currently-Selected Button


// Scene Macros/Enums:


// Sound Effects:


// Scene Data:
extern union SceneObject main_menu_scene_objects[];
extern struct GraphicsTable main_menu_gfx_table[];
extern struct CompressedGraphics *main_menu_buffered_textures[];
extern struct Animation *main_menu_button_on_anim[5];
extern struct Animation *main_menu_button_off_anim[5];


// Functions:
extern void func_0801242c(void); // Init. Static Variables
extern void func_08012438(void); // Graphics Init. 3
extern void func_08012464(void); // Graphics Init. 2
extern void func_08012494(void); // Graphics Init. 1
extern void func_080124d0(u32);  // Scene Start
extern void func_080125f8(u32);  // Scene Update (Paused)
extern void func_080125fc(u32);  // Scene Update (Active)
extern u32  func_080127d0(void); // Scene Can Update
extern void func_080127ec(u32);  // Scene Stop
