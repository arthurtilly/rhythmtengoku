#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct TitleSceneInfo {
    u32 scriptIsReady;
    u32 timeUntilDemo;
    struct TextPrinter *textPrinter;
    s16 directiveText;
    s16 stars;
    u8 titleIsDisplayed;
    struct LogoBubble {
        u8 active;
        s16 inner;
        s16 outer;
        s16 letter;
        s16 centerX;
        s16 centerY;
        s16 riseDistance;
        s8_8 riseSpeed;
        s8_8 riseAngle;
        s8_8 riseTurnSpeed;
        s8_8 bounceAngle;
        s8_8 bounceBaseAngle;
        s8_8 bounceDistance;
    } logoBubbles[5];
    s32 nextLogoBubble;
};

struct TitleLogoCharData {
    struct Animation *anim;
    s16 x, y;
    s16 bounceAngle;
};


// Scene Macros/Enums:
#define TOTAL_TITLE_LOGO_BUBBLES 5


// Scene Data:
extern struct TitleLogoCharData title_logo_char_data[];
extern struct GraphicsTable title_gfx_table[];
extern struct CompressedGraphics *title_buffered_textures[];


// Functions:
extern void func_0801ca34(s32 id); // Update Logo Bubble Position
extern void func_0801cb0c(void); // Init. Logo Bubbles
extern void func_0801cc2c(void); // Start Logo Bubble Rise (Script Function)
extern void func_0801cc84(void); // Update Logo Bubbles
extern void func_0801ccd0(void); // Logo Bubbles Beat Animation
extern void func_0801cd14(s32 id); // Animate Logo Bubble (Script Function)
extern void func_0801cd60(void); // Init. Static Variables
extern void func_0801cd64(void); // Graphics Init. 3
extern void func_0801cd90(void); // Graphics Init. 2
extern void func_0801cdc0(void); // Graphics Init. 1
extern void func_0801cdfc(void *sceneVar, s32 dataArg); // Scene Start
extern void func_0801cefc(void); // Finish Intro (Script Function)
extern void func_0801cf44(void); // Beat Animation? (Script Function)
extern void func_0801cfa4(void *sceneVar, s32 dataArg); // Scene Update (Paused)
extern void func_0801cfa8(void); // Update Inputs
extern void func_0801d02c(void *sceneVar, s32 dataArg); // Scene Update (Active)
extern u32 func_0801d08c(void); // Communicate with Script
extern void func_0801d0a8(void *sceneVar, s32 dataArg); // Scene Stop
