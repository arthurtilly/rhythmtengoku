extern struct SequenceData s_toys_bgm_seqData;


// [D_089dd4a4] Rhythm Toys Menu - Levels
struct MedalCornerLevel toys_menu_levels[] = {
    /* CAT_MACHINE */ {
        /* Scene  */ &scene_cat_machine,
        /* Title  */ "ネコ マシーン",
        /* Anim   */ anim_toys_menu_cat_machine,
        /* Medals */ 1
    },
    /* MECHANICAL_HORSE */ {
        /* Scene  */ &scene_mechanical_horse,
        /* Title  */ "うま マシーン",
        /* Anim   */ anim_toys_menu_mechanical_horse,
        /* Medals */ 7
    },
    /* LOVE_MACHINE */ {
        /* Scene  */ &scene_love_machine,
        /* Title  */ "告白 マシーン",
        /* Anim   */ anim_toys_menu_love_machine,
        /* Medals */ 15
    },
    /* RAP_MACHINE */ {
        /* Scene  */ &scene_rap_machine,
        /* Title  */ "ラップ マシーン",
        /* Anim   */ anim_toys_menu_rap_machine,
        /* Medals */ 25
    }
};


// [D_089dd4e4] Rhythm Toys Menu - Graphics Table
struct GraphicsTable toys_menu_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd8da0,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd931c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd8388,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd8fa4,
        /* Dest. */ OBJ_TILESET_BASE(0x5000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ toys_menu_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ toys_menu_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089dd538] Rhythm Toys Menu
struct MedalCornerMenu toys_menu_data = {
    /* Level Count */ TOTAL_RHYTHM_TOYS,
    /* Music       */ &s_toys_bgm_seqData,
    /* Graphics    */ toys_menu_gfx_table,
    /* Level Data  */ toys_menu_levels
};
