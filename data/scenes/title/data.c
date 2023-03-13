#include "global.h"
#include "graphics.h"
#include "src/scenes/title.h"
#include "graphics/title/title_graphics.h"


  /* TITLE SCREEN - SCENE DATA */


// [D_089dcf68] Title Logo Characters
struct TitleLogoCharData title_logo_char_data[] = {
    /* RI */ {
        /* Anim */ anim_title_logo_ri,
        /* X, Y */ 44, 78,
        /* Unk8 */ 148
    },
    /* ZU */ {
        /* Anim */ anim_title_logo_zu,
        /* X, Y */ 77, 88,
        /* Unk8 */ 84
    },
    /* MU */ {
        /* Anim */ anim_title_logo_mu,
        /* X, Y */ 117, 77,
        /* Unk8 */ 192
    },
    /* TEN */ {
        /* Anim */ anim_title_logo_ten,
        /* X, Y */ 158, 87,
        /* Unk8 */ 44
    },
    /* GOKU */ {
        /* Anim */ anim_title_logo_goku,
        /* X, Y */ 198, 78,
        /* Unk8 */ -20
    }
};

// [D_089dcfa4] Graphics Table
struct GraphicsTable title_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd663c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd7ae0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd7948,
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
struct CompressedGraphics *title_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
