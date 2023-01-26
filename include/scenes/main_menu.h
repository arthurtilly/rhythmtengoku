#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct MainMenuSceneInfo {
    struct TextObject2 *font2;
    struct TextObject1 *font1;
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


// OAM Animations:
extern const struct Animation D_0890a3c4[]; // Blank


// Palettes:


// Sound Effects:
extern const struct SequenceData s_menu_cursor2_seqData;
extern const struct SequenceData s_menu_kettei1_seqData;


// Scene Data:


// Scene Definition Data:
extern const void *const D_089cdc40[]; // some unused sprite/text sort of thing
extern const struct GraphicsTable D_089cdc44[]; // Graphics Table
extern const struct CompressedGraphics *const D_089cdc8c[]; // Buffered Textures List
extern const struct Animation *const D_089cdc90[5]; // Button Animations (Highlighted)
extern const struct Animation *const D_089cdca4[5]; // Button Animations

extern void func_0801242c(void); // Init. Static Variables
extern void func_08012438(void); // Graphics Init. 3
extern void func_08012464(void); // Graphics Init. 2
extern void func_08012494(void); // Graphics Init. 1
extern void func_080124d0(u32);  // Scene Start
extern void func_080125f8(u32);  // Scene Update Frozen
extern void func_080125fc(u32);  // Scene Update
extern u32  func_080127d0(void); // Scene Can Update
extern void func_080127ec(u32);  // Scene Stop
