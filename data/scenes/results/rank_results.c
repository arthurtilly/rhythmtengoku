#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"


  /* RESULTS (RANK-TYPE) - SCENE DATA */


// [D_089d7650] Scene Objects
union SceneObject rank_results_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};

// [D_089d7654] Graphics Table
struct GraphicsTable rank_results_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &rank_results_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ rank_results_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ rank_results_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7684] Buffered Textures List
struct CompressedData *rank_results_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089d7688] Rank SFX
struct SongHeader *rank_results_sfx[] = {
    /* Try Again */ &s_f_result_bad_seqData,
    /* OK        */ &s_f_result_normal_seqData,
    /* Superb    */ &s_jingle_hi_level_seqData
};

// [D_089d7694] Rank BGM
struct SongHeader *rank_results_bgm[] = {
    /* Try Again */ &s_kekka_bgm_bad_seqData,
    /* OK        */ &s_kekka_bgm_common_seqData,
    /* Superb    */ &s_kekka_bgm_good_seqData
};
