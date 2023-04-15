#include "global.h"
#include "graphics.h"
#include "text.h"
#include "src/scenes/reading.h"
#include "graphics/data_room/data_room_graphics.h"


  /* RHYTHM DATA ROOM (READING) - SCENE DATA */


#include "reading_styles.inc.c"
#include "reading_material.inc.c"


// [D_089d7fb4] Graphics Table
struct GraphicsTable reading_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cccb04,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_obj_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089d7fe4] Buffered Textures List
struct CompressedGraphics *reading_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089d7fe8] Default Reading Material (Error Case)
struct ReadingMaterial reading_material_error = {
    /* TITLE ---------------------------------------------------------- */
        "\0023" "\0013" "\001C" "�G���[",
    /* BODY ----------------------------------------------------------- */
        "\001C" "\0032" "\001l" "\n"
        "\n"
        "\n"
        "\n"
        "�����f�[�^",
    /* STYLE ---------------------------------------------------------- */
        /* GFX */ (struct GraphicsTable[]) {
            /* BG Tileset */ {
                /* Src.  */ &D_08cd29ac,
                /* Dest. */ BG_TILESET_BASE(0),
                /* Size  */ COMPRESSED_GFX_SOURCE
            },
            /* BG Map */ {
                /* Src.  */ &D_08cd2cec,
                /* Dest. */ BG_MAP_BASE(0xE800),
                /* Size  */ COMPRESSED_GFX_SOURCE
            },
            /* BG Palette */ {
                /* Src.  */ reading_style_cherry_pal,
                /* Dest. */ BG_PALETTE_BUFFER(0),
                /* Size  */ 0x200
            },
            END_OF_GRAPHICS_TABLE
        },
        /* BGM */ NULL
    /* ---------------------------------------------------------------- */
};
