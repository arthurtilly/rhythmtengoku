extern const struct Scene D_089d52e4;
extern const struct Scene D_089d53cc;
extern const struct Scene D_089d4c8c;
extern const struct Scene D_089d54b4;
extern const struct Scene D_089d559c;
extern const struct Scene D_089d4d74;
extern const struct Scene D_089d4f44;
extern const struct Scene D_089d51fc;
extern const struct Scene D_089d502c;
extern const struct Scene D_089d4e5c;
extern const struct Scene D_089d5114;
extern const struct Scene D_089d593c;
extern const struct Scene D_089d576c;
extern const struct Scene D_089d5854;
extern const struct Scene D_089d5684;
extern const struct Scene D_089d5a24;
extern const struct Scene D_089d5b0c;
extern const struct Scene D_089d5bf4;
extern const struct Scene D_089d5cdc;
extern struct SequenceData s_lesson_sel_bgm_seqData;


// [D_089dd5ec] Drum Lessons Menu - Levels
struct MedalCornerLevel lessons_menu_levels[TOTAL_DRUM_LESSONS] = {
    /* BASIC_1 */ {
        /* Scene  */ &D_089d52e4,
        /* Title  */ "ベーシック　１",
        /* Anim   */ anim_lessons_menu_basic_1,
        /* Medals */ 3
    },
    /* BASIC_2 */ {
        /* Scene  */ &D_089d53cc,
        /* Title  */ "ベーシック　２",
        /* Anim   */ anim_lessons_menu_basic_2,
        /* Medals */ 6
    },
    /* SHORT_1 */ {
        /* Scene  */ &D_089d4c8c,
        /* Title  */ "ショート　１",
        /* Anim   */ anim_lessons_menu_short_1,
        /* Medals */ 9
    },
    /* SHORT_2 */ {
        /* Scene  */ &D_089d54b4,
        /* Title  */ "ショート　２",
        /* Anim   */ anim_lessons_menu_short_2,
        /* Medals */ 12
    },
    /* SHORT_3 */ {
        /* Scene  */ &D_089d559c,
        /* Title  */ "ショート　３",
        /* Anim   */ anim_lessons_menu_short_3,
        /* Medals */ 15
    },
    /* SHORT_4 */ {
        /* Scene  */ &D_089d4d74,
        /* Title  */ "ショート　４",
        /* Anim   */ anim_lessons_menu_short_4,
        /* Medals */ 18
    },
    /* SHORT_5 */ {
        /* Scene  */ &D_089d4f44,
        /* Title  */ "ショート　５",
        /* Anim   */ anim_lessons_menu_short_5,
        /* Medals */ 21
    },
    /* SHORT_6 */ {
        /* Scene  */ &D_089d51fc,
        /* Title  */ "ショート　６",
        /* Anim   */ anim_lessons_menu_short_6,
        /* Medals */ 24
    },
    /* SHORT_7 */ {
        /* Scene  */ &D_089d502c,
        /* Title  */ "ショート　７",
        /* Anim   */ anim_lessons_menu_short_7,
        /* Medals */ 27
    },
    /* SHORT_8 */ {
        /* Scene  */ &D_089d4e5c,
        /* Title  */ "ショート　８",
        /* Anim   */ anim_lessons_menu_short_8,
        /* Medals */ 30
    },
    /* SHORT_9 */ {
        /* Scene  */ &D_089d5114,
        /* Title  */ "ショート　９",
        /* Anim   */ anim_lessons_menu_short_9,
        /* Medals */ 32
    },
    /* LONG_1 */ {
        /* Scene  */ &D_089d593c,
        /* Title  */ "ロング　１",
        /* Anim   */ anim_lessons_menu_long_1,
        /* Medals */ 34
    },
    /* LONG_2 */ {
        /* Scene  */ &D_089d576c,
        /* Title  */ "ロング　２",
        /* Anim   */ anim_lessons_menu_long_2,
        /* Medals */ 36
    },
    /* LONG_3 */ {
        /* Scene  */ &D_089d5854,
        /* Title  */ "ロング　３",
        /* Anim   */ anim_lessons_menu_long_3,
        /* Medals */ 38
    },
    /* LONG_4 */ {
        /* Scene  */ &D_089d5684,
        /* Title  */ "ロング　４",
        /* Anim   */ anim_lessons_menu_long_4,
        /* Medals */ 40
    },
    /* LONG_5 */ {
        /* Scene  */ &D_089d5a24,
        /* Title  */ "ロング　５",
        /* Anim   */ anim_lessons_menu_long_5,
        /* Medals */ 42
    },
    /* LONG_6 */ {
        /* Scene  */ &D_089d5b0c,
        /* Title  */ "ロング　６",
        /* Anim   */ anim_lessons_menu_long_5,
        /* Medals */ 44
    },
    /* HI_TECH_1 */ {
        /* Scene  */ &D_089d5bf4,
        /* Title  */ "ハイテク　１",
        /* Anim   */ anim_lessons_menu_hi_tech_1,
        /* Medals */ 46
    },
    /* HI_TECH_2 */ {
        /* Scene  */ &D_089d5cdc,
        /* Title  */ "ハイテク　２",
        /* Anim   */ anim_lessons_menu_hi_tech_1,
        /* Medals */ 48
    }
};


// [D_089dd71c] Drum Lessons Menu - Graphics Table
struct GraphicsTable lessons_menu_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cc6914,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc6ccc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cc5e8c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd8fa4,
        /* Dest. */ OBJ_TILESET_BASE(0x5000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ lessons_menu_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ lessons_menu_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089dd770] Drum Lessons Menu
struct MedalCornerMenu lessons_menu_data = {
    /* Level Count */ TOTAL_DRUM_LESSONS,
    /* Music       */ &s_lesson_sel_bgm_seqData,
    /* Graphics    */ lessons_menu_gfx_table,
    /* Level Data  */ lessons_menu_levels
};


// [D_089dd780] Drum Lessons Menu - Rank Icons
struct Animation *lessons_menu_rank_icons[] = {
    /* 0x00 */ anim_lessons_menu_rank_c,
    /* 0x01 */ anim_lessons_menu_rank_c,
    /* 0x02 */ anim_lessons_menu_rank_b,
    /* 0x03 */ anim_lessons_menu_rank_a,
    /* 0x04 */ anim_lessons_menu_rank_s
};
