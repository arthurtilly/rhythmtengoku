extern struct SequenceData s_mini_game_bgm_seqData;


// [D_089dd548] Endless Games Menu - Levels
struct MedalCornerLevel endless_menu_levels[] = {
    /* MR_UPBEAT */ {
        /* Scene  */ &scene_mr_upbeat,
        /* Title  */ "�E�����Ƃ�",
        /* Anim   */ anim_endless_menu_mr_upbeat,
        /* Medals */ 1
    },
    /* SICK_BEATS */ {
        /* Scene  */ &scene_sick_beats_endless,
        /* Title  */ "�o�C�L���͂����r�o",
        /* Anim   */ anim_endless_menu_sick_beats,
        /* Medals */ 10
    },
    /* QUIZ_SHOW */ {
        /* Scene  */ &scene_quiz_show_endless,
        /* Title  */ "�N�C�Y�@�X�y�V����",
        /* Anim   */ anim_endless_menu_quiz_show,
        /* Medals */ 20
    },
    /* MANNEQUIN_FACTORY */ {
        /* Scene  */ &scene_mannequin_factory,
        /* Title  */ "�}�l�L���H��",
        /* Anim   */ anim_endless_menu_mannequin,
        /* Medals */ 30
    }
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
    /* Level Count */ TOTAL_ENDLESS_GAMES,
    /* Music       */ &s_mini_game_bgm_seqData,
    /* Graphics    */ endless_menu_gfx_table,
    /* Level Data  */ endless_menu_levels
};
