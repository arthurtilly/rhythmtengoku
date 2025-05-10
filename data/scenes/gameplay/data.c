#include "global.h"
#include "graphics.h"
#include "src/scenes/gameplay.h"
#include "graphics/gameplay/gameplay_graphics.h"


  /* GAMEPLAY/RHYTHM GAMES - SCENE DATA */


// [D_089cfd7c] Graphics Table
struct GraphicsTable gameplay_common_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &gameplay_obj,
        /* Dest. */ OBJ_TILESET_BASE(0x7800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Palette */ {
        /* Src.  */ gameplay_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(14),
        /* Size  */ 0x40
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cfda0] Buffered Textures List
struct CompressedData *gameplay_common_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

asm(".include \"data/scenes/gameplay/fade_out_script.inc\"");

// [D_089cfde0] Pause Menu Definition
struct PauseMenuDefinition gameplay_pause_menu_data = {
    /* Pause Button   */ START_BUTTON,
    /* On-Pause Func. */ gameplay_start_pause_menu,
    /* Update Func.   */ gameplay_update_pause_menu,
    /* Quit SFX       */ &s_f_pause_quit_seqData
};

// [D_089cfdf0] Text Advance Icons
struct Animation *gameplay_text_adv_icons[] = {
    /* Black */ anim_gameplay_text_button_black,
    /* White */ anim_gameplay_text_button_white
};
