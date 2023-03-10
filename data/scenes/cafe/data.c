#include "global.h"
#include "graphics.h"
#include "src/scenes/cafe.h"
#include "graphics/cafe/cafe_graphics.h"
#include "text/cafe_text.h"


  /* CAFE - SCENE DATA */


// [D_089cd2e8] Dialogue List - ?
const char *D_089cd2e8[] = {
    D_0804f4f4,
    D_0804f488,
    D_0804f444,
    D_0804f400,
    D_0804f3ec,
    NULL
};

// [D_089cd300] Dialogue List - ?
const char *D_089cd300[] = {
    D_0804f530,
    NULL
};

// [D_089cd308] Dialogue List - ?
const char *D_089cd308[] = {
    D_0804f5c4,
    D_0804f584,
    D_0804f554,
    NULL
};

// [D_089cd318] Dialogue List - ?
const char *D_089cd318[] = {
    D_0804f634,
    D_0804f600,
    NULL
};

// [D_089cd324] Dialogue List - ?
const char *D_089cd324[] = {
    D_0804f6a8,
    D_0804f67c,
    NULL
};

// [D_089cd330] Dialogue List - ?
const char *D_089cd330[] = {
    D_0804f7f4,
    D_0804f7b8,
    D_0804f764,
    D_0804f720,
    D_0804f6e4,
    NULL
};

// [D_089cd348] Dialogue List - ?
const char *D_089cd348[] = {
    D_0804f8d0,
    D_0804f8ac,
    D_0804f88c,
    D_0804f868,
    D_0804f840
};

// [D_089cd35c] Dialogue List - ?
const char *D_089cd35c[] = {
    D_0804f97c,
    D_0804f95c,
    D_0804f93c,
    D_0804f918,
    D_0804f8f8,
};

// [D_089cd370] Dialogue List - ?
const char *D_089cd370[] = {
    D_0804fa50,
    D_0804fa10,
    D_0804f9c0,
    D_0804f99c,
    NULL
};

// [D_089cd384] Dialogue List - ?
const char *D_089cd384[] = {
    D_0804fbbc,
    D_0804fb7c,
    D_0804fb40,
    D_0804fae8,
    D_0804fa9c,
    NULL
};

// [D_089cd39c] Dialogue List - ?
const char *D_089cd39c[] = {
    D_0804fd08,
    D_0804fcc0,
    D_0804fc7c,
    D_0804fc44,
    D_0804fc0c,
    NULL
};

// [D_089cd3b4] Dialogue List - ?
const char *D_089cd3b4[] = {
    D_0804fe88,
    D_0804fe38,
    D_0804fddc,
    D_0804fd94,
    D_0804fd3c,
    NULL
};

// [D_089cd3cc] Dialogue List - ?
const char *D_089cd3cc[] = {
    D_0804ff94,
    D_0804ff68,
    D_0804ff24,
    D_0804fed4,
    NULL
};

// [D_089cd3e0] Dialogue List - ?
const char *D_089cd3e0[] = {
    D_08050094,
    D_0805004c,
    D_0805000c,
    D_0804ffcc,
    NULL
};

// [D_089cd3f4] Dialogue List - ?
const char *D_089cd3f4[] = {
    D_08050190,
    D_08050158,
    D_08050118,
    D_080500c0,
    NULL
};

// [D_089cd408] Dialogue List - ?
const char *D_089cd408[] = {
    D_080502ac,
    D_08050250,
    D_08050200,
    D_080501bc,
    NULL
};

// [D_089cd41c] Dialogue List - ?
const char *D_089cd41c[] = {
    D_08050474,
    D_08050428,
    D_080503c8,
    D_08050368,
    D_08050304,
    NULL
};

// [D_089cd434] Dialogue List - ?
const char *D_089cd434[] = {
    D_080505e0,
    D_08050590,
    D_08050554,
    D_080504f4,
    D_080504b0,
    NULL
};

// [D_089cd44c] Dialogue Table
const char **D_089cd44c[] = {
    D_089cd370,
    D_089cd384,
    D_089cd39c,
    D_089cd3b4,
    D_089cd3cc,
    D_089cd3e0,
    D_089cd3f4,
    D_089cd408,
    D_089cd41c,
    D_089cd434
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089cd474] Cursor Animations
struct Animation *cafe_cursor_animations[] = {
    anim_cafe_cursor_option1,
    anim_cafe_cursor_option2
};

// [D_089cd47c] ?
u8 D_089cd47c[] = { 46, 1, 9, 14, 7, 23, 47, 12, 30, 5, 19, 16, 48, -1 };

// [D_089cd48c] Graphics Table
struct GraphicsTable gfx_table_cafe[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cc0c30,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc0cf0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc1158,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cbf0e8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ cafe_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ cafe_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cd4e0] Buffered Textures List
struct CompressedGraphics *cafe_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
