// [D_089d7c34] Graphics Table (Cherry Petals)
struct GraphicsTable reading_style_cherry_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_cherry_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_cherry_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_cherry_pal,
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

// [D_089d7c70] BGM (Cherry Petals)
struct SongHeader *reading_style_cherry_bgm = &s_f_env_cherry_seqData;


// [D_089d7c74] Graphics Table (Newspaper on Train)
struct GraphicsTable reading_style_train_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_train_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_train_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_train_pal,
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

// [D_089d7cb0] BGM (Newspaper on Train)
struct SongHeader *reading_style_train_bgm = &s_f_env_train_seqData;


// [D_089d7cb4] Graphics Table (Clouds with Seaside Ambience)
struct GraphicsTable reading_style_sea_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_sea_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_sea_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_sea_pal,
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

// [D_089d7cf0] BGM (Clouds with Seaside Ambience)
struct SongHeader *reading_style_sea_bgm = &s_sindan_sea_seqData;


// [D_089d7cf4] Graphics Table (Haiku)
struct GraphicsTable reading_style_haiku_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_haiku_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_haiku_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_haiku_pal,
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

// [D_089d7d30] BGM (Haiku)
struct SongHeader *reading_style_haiku_bgm = &s_f_env_haiku_seqData;


// [D_089d7d34] Graphics Table (Chalkboard)
struct GraphicsTable reading_style_classroom_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_classroom_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_classroom_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_classroom_pal,
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

// [D_089d7d70] BGM (Chalkboard)
struct SongHeader *reading_style_classroom_bgm = &s_f_env_class_room_seqData;


// [D_089d7d74] Graphics Table (Bulletin Board, Unused)
struct GraphicsTable reading_style_bulletin_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_bulletin_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_bulletin_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_bulletin_pal,
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

// [D_089d7db0] BGM (Bulletin Board, Unused)
struct SongHeader *reading_style_bulletin_bgm = &s_sindan_sea_seqData;


// [D_089d7db4] Graphics Table (Cooking Pot with Music Notes)
struct GraphicsTable reading_style_cooking_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_cooking_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_cooking_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_cooking_pal,
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

// [D_089d7df0] BGM (Cooking Pot with Music Notes)
struct SongHeader *reading_style_cooking_bgm = &s_sindan_sea_seqData;


// [D_089d7df4] Graphics Table (Mail)
struct GraphicsTable reading_style_mail_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_mail_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_mail_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_mail_pal,
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

// [D_089d7e30] BGM (Mail)
struct SongHeader *reading_style_mail_bgm = &s_sindan_mail_seqData;


// [D_089d7e34] Graphics Table (Manzai)
struct GraphicsTable reading_style_manzai_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &reading_style_manzai_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &reading_style_manzai_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ reading_style_manzai_pal,
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

// [D_089d7e70] BGM (Manzai)
struct SongHeader *reading_style_manzai_bgm = &s_sindan_manzai_seqData;
