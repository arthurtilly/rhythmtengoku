// [D_089d7c34] Graphics Table (Cherry Petals)
struct GraphicsTable reading_style_cherry_gfx_table[] = {
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
    /* OBJ Palette */ {
        /* Src.  */ reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7c70] BGM (Cherry Petals)
struct SequenceData *reading_style_cherry_bgm = &s_f_env_cherry_seqData;


// [D_089d7c74] Graphics Table (Newspaper on Train)
struct GraphicsTable reading_style_train_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd1d28,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd21cc,
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
struct SequenceData *reading_style_train_bgm = &s_f_env_train_seqData;


// [D_089d7cb4] Graphics Table (Clouds with Seaside Ambience)
struct GraphicsTable reading_style_sea_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd31d8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd3470,
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
struct SequenceData *reading_style_sea_bgm = &s_sindan_sea_seqData;


// [D_089d7cf4] Graphics Table (Haiku)
struct GraphicsTable reading_style_haiku_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08ccf798,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08ccfa5c,
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
struct SequenceData *reading_style_haiku_bgm = &s_f_env_haiku_seqData;


// [D_089d7d34] Graphics Table (Chalkboard)
struct GraphicsTable reading_style_classroom_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd0a10,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd0cf8,
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
struct SequenceData *reading_style_classroom_bgm = &s_f_env_class_room_seqData;


// [D_089d7d74] Graphics Table (Bulletin Board, Unused)
struct GraphicsTable reading_style_bulletin_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08ccd074,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08ccd350,
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
struct SequenceData *reading_style_bulletin_bgm = &s_sindan_sea_seqData;


// [D_089d7db4] Graphics Table (Cooking Pot with Music Notes)
struct GraphicsTable reading_style_cooking_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cce92c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cceb58,
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
struct SequenceData *reading_style_cooking_bgm = &s_sindan_sea_seqData;


// [D_089d7df4] Graphics Table (Mail)
struct GraphicsTable reading_style_mail_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cceda8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08ccef6c,
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
struct SequenceData *reading_style_mail_bgm = &s_sindan_mail_seqData;


// [D_089d7e34] Graphics Table (Manzai)
struct GraphicsTable reading_style_manzai_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cce120,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cce57c,
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
struct SequenceData *reading_style_manzai_bgm = &s_sindan_manzai_seqData;
