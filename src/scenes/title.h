#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct TitleSceneInfo {
    /* add fields here */
};

struct TitleLogoCharData {
    struct Animation *anim;
    s16 x, y;
    s16 unk8;
};


// Scene Macros/Enums:


// Scene Data:
extern struct TitleLogoCharData title_logo_char_data[];
extern struct GraphicsTable title_gfx_table[];
extern struct CompressedGraphics *title_buffered_textures[];


// Functions:
// extern ? func_0801ca34(?); // ?
// extern ? func_0801cb0c(?); // ?
// extern ? func_0801cc2c(?); // Show Text? (Script Function)
// extern ? func_0801cc84(?); // ?
// extern ? func_0801ccd0(?); // ?
// extern ? func_0801cd14(?); // Animate Single Bubble? (Script Function)
// extern ? func_0801cd60(?); // Init. Static Variables
// extern ? func_0801cd64(?); // Graphics Init. 3
// extern ? func_0801cd90(?); // Graphics Init. 2
// extern ? func_0801cdc0(?); // Graphics Init. 1
// extern ? func_0801cdfc(?); // Scene Start
// extern ? func_0801cefc(?); // ? (Script Function)
// extern ? func_0801cf44(?); // Beat Animation? (Script Function)
// extern ? func_0801cfa4(?); // Scene Update (Paused)
// extern ? func_0801cfa8(?); // ?
// extern ? func_0801d02c(?); // Scene Update (Active)
// extern ? func_0801d08c(?); // ?
// extern ? func_0801d0a8(?); // Scene Stop
