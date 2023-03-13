extern const struct Scene D_089d6804;
extern const struct Scene D_089d6c8c;
extern const struct Scene D_089d6ba4;
extern const struct Scene D_089d69e0;
extern struct SequenceData s_mini_game_bgm_seqData;

// [D_089dd548] Endless Games Menu - Levels
struct MedalCornerLevel endless_menu_levels[] = {
    /* 0x00 */ {
        /* Scene  */ &D_089d6804,
        /* Title  */ text_endless_menu_mr_upbeat,
        /* Anim   */ anim_endless_menu_mr_upbeat,
        /* Medals */ 1
    },
    /* 0x01 */ {
        /* Scene  */ &D_089d6c8c,
        /* Title  */ text_endless_menu_sick_beats,
        /* Anim   */ anim_endless_menu_sick_beats,
        /* Medals */ 10
    },
    /* 0x02 */ {
        /* Scene  */ &D_089d6ba4,
        /* Title  */ text_endless_menu_quiz_show,
        /* Anim   */ anim_endless_menu_quiz_show,
        /* Medals */ 20
    },
    /* 0x03 */ {
        /* Scene  */ &D_089d69e0,
        /* Title  */ text_endless_menu_mannequin_factory,
        /* Anim   */ anim_endless_menu_mannequin,
        /* Medals */ 30
    },
};

// [D_089dd588] Endless Games Menu - Graphics Table
struct GraphicsTable endless_menu_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cc4670,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc4a00,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cc3b7c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd8fa4,
        /* Dest. */ OBJ_TILESET_BASE(0x5000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ endless_menu_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ endless_menu_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089dd5dc] Endless Games Menu
struct MedalCornerMenu endless_menu_data = {
    /* Level Count */ 4,
    /* Music       */ &s_mini_game_bgm_seqData,
    /* Graphics    */ endless_menu_gfx_table,
    /* Level Data  */ endless_menu_levels
};
