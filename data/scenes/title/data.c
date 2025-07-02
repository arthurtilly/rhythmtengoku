#include "global.h"
#include "graphics.h"
#include "src/scenes/title.h"
#include "graphics/title/title_graphics.h"


  /* TITLE SCREEN - SCENE DATA */


// [D_089dcf68] Title Logo Characters
struct TitleLogoCharData title_logo_char_data[TOTAL_TITLE_LOGO_BUBBLES] = {
    /* RI */ {
        /* Anim. */ anim_title_logo_ri,
        /* X, Y  */ 44, 78,
        /* Angle */ 148
    },
    /* ZU */ {
        /* Anim. */ anim_title_logo_zu,
        /* X, Y  */ 77, 88,
        /* Angle */ 84
    },
    /* MU */ {
        /* Anim. */ anim_title_logo_mu,
        /* X, Y  */ 117, 77,
        /* Angle */ 192
    },
    /* TEN */ {
        /* Anim. */ anim_title_logo_ten,
        /* X, Y  */ 158, 87,
        /* Angle */ 44
    },
    /* GOKU */ {
        /* Anim. */ anim_title_logo_goku,
        /* X, Y  */ 198, 78,
        /* Angle */ -20
    }
};


// [D_089dcfa4] Graphics Table
struct GraphicsTable title_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &title_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &title_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &title_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ title_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ title_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089dcfec] Buffered Textures List
struct CompressedData *title_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
