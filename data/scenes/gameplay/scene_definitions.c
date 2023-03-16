#include "global.h"
#include "graphics.h"
#include "src/scenes/gameplay.h"
#include "src/scenes/riq_main_scene.h"
#include "scene_definitions.h"

// [D_089cfd7c] Graphics Table (Common Gameplay Graphics/Palettes, e.g. Pause Menu)
struct GraphicsTable D_089cfd7c[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08ccca5c,
        /* Dest. */ OBJ_TILESET_BASE(0x7800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Palette */ {
        /* Src.  */ &D_0890ada0,
        /* Dest. */ OBJ_PALETTE_BUFFER(0xE),
        /* Size  */ 0x40
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cfda0] Buffered Textures List
struct CompressedGraphics *D_089cfda0[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089cfda4] Generic Fade-Out Sequence
asm(".include \"include/beatscript.inc\"");

asm("script D_089cfda4");
asm("    enable_play_inputs 0");
asm("    fade_music_out TO_TEMPO, 96");
asm("    fade_screen_out 12, BLACK");
asm("    rest 24");
asm("stop");

// [D_089cfde0] Pause Handler Definition
struct PauseMenuDefinition D_089cfde0 = {
    /* Pause Button */ 8,
    /* Init Func */    gameplay_start_pause_menu,
    /* Update Func */  gameplay_update_pause_menu,
    /* Quit Sfx */     &s_f_pause_quit_seqData
};

// A Button Prompt Animations { 0 = Black; 1 = White }
struct Animation *D_089cfdf0[2] = {
    &D_0890ac00,
    &D_0890ac20
};
