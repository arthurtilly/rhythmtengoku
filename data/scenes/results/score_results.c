#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/results.h"
#include "graphics/results/results_graphics.h"


  /* RESULTS (SCORE-TYPE) - SCENE DATA */


// [D_089d7800] Scene Objects
union SceneObject score_results_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};

// [D_089d7804] Graphics Table
struct GraphicsTable score_results_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd4f58,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ score_results_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ score_results_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7834] Buffered Textures List
struct CompressedGraphics *score_results_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089d7838] Score Result Text
const char *score_results_comments_text[] = {
    /* Best  */ "最高レベルです！！",
    /* Great */ "かなり良いです！",
    /* Good  */ "人並みです。",
    /* OK    */ "もう一歩。",
    /* Bad   */ "う～ん…"
};

// [D_089d784c] Score Thresholds?
u16 score_results_thresholds[] = {
    /* Best  */ 1000,
    /* Great */ 950,
    /* Good  */ 800,
    /* OK    */ 500
};

// [D_089d7854] Score Result SFX
struct SequenceData *score_results_reveal_sfx[] = {
    /* Best  */ &s_jingle_hi_level_seqData,
    /* Great */ &s_fanfare_drum1_seqData,
    /* Good  */ &s_fanfare_drum2_seqData,
    /* OK    */ &s_fanfare_drum3_seqData,
    /* Bad   */ &s_yuri_naki_seqData
};
