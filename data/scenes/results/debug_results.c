#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "data/beatscript_scene_data.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"


  /* RESULTS (DEBUG-TYPE) - SCENE DATA */


// [D_089d7518] Scene Objects
union SceneObject debug_results_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};

// [D_089d751c] Graphics Table
struct GraphicsTable debug_results_gfx_table[] = {
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[8],
        /* Dest. */ OBJ_PALETTE_BUFFER(1.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[9],
        /* Dest. */ OBJ_PALETTE_BUFFER(2.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[10],
        /* Dest. */ OBJ_PALETTE_BUFFER(3.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[11],
        /* Dest. */ OBJ_PALETTE_BUFFER(4.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[12],
        /* Dest. */ OBJ_PALETTE_BUFFER(5.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[13],
        /* Dest. */ OBJ_PALETTE_BUFFER(6.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(7.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d757c] Buffered Textures List
struct CompressedData *debug_results_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
