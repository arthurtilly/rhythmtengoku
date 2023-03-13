#include "global.h"
#include "graphics.h"
#include "src/scenes/reading.h"
#include "graphics/data_room/data_room_graphics.h"
#include "text/reading_text.h"


  /* RHYTHM DATA ROOM (READING) - SCENE DATA */


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

// [D_089d7e74] Reading Material Table
struct ReadingMaterial reading_material_table[] = {
    /* "Rhythm Tengoku Welcome" */ {
        /* Title */ text_reading_rhythm_tengoku_welcome_title,
        /* Text  */ text_reading_rhythm_tengoku_welcome,
        /* GFX   */ reading_style_mail_gfx_table,
        /* BGM   */ &reading_style_mail_bgm
    },
    /* "Handling Instructions" */ {
        /* Title */ text_reading_handling_instructions_title,
        /* Text  */ text_reading_handling_instructions,
        /* GFX   */ reading_style_cherry_gfx_table,
        /* BGM   */ &reading_style_cherry_bgm
    },
    /* "More Than a Barista" */ {
        /* Title */ text_reading_more_than_a_barista_title,
        /* Text  */ text_reading_more_than_a_barista,
        /* GFX   */ reading_style_train_gfx_table,
        /* BGM   */ &reading_style_train_bgm
    },
    /* "Letter to the Editor" */ {
        /* Title */ text_reading_letter_to_the_editor_title,
        /* Text  */ text_reading_letter_to_the_editor,
        /* GFX   */ reading_style_train_gfx_table,
        /* BGM   */ &reading_style_train_bgm
    },
    /* "Night Walk Riddle" */ {
        /* Title */ text_reading_night_walk_riddle_title,
        /* Text  */ text_reading_night_walk_riddle,
        /* GFX   */ reading_style_train_gfx_table,
        /* BGM   */ &reading_style_train_bgm
    },
    /* "Inside Spaceball" */ {
        /* Title */ text_reading_inside_spaceball_title,
        /* Text  */ text_reading_inside_spaceball,
        /* GFX   */ reading_style_train_gfx_table,
        /* BGM   */ &reading_style_train_bgm
    },
    /* "Horse Machine's Story" */ {
        /* Title */ text_reading_horse_machines_story_title,
        /* Text  */ text_reading_horse_machines_story,
        /* GFX   */ reading_style_train_gfx_table,
        /* BGM   */ &reading_style_train_bgm
    },
    /* "Marcher's Diary" */ {
        /* Title */ text_reading_marchers_diary_title,
        /* Text  */ text_reading_marchers_diary,
        /* GFX   */ reading_style_cherry_gfx_table,
        /* BGM   */ &reading_style_cherry_bgm
    },
    /* "Rap Report" */ {
        /* Title */ text_reading_rap_report_title,
        /* Text  */ text_reading_rap_report,
        /* GFX   */ reading_style_cherry_gfx_table,
        /* BGM   */ &reading_style_cherry_bgm
    },
    /* "Lyrics - The Bon Odori" */ {
        /* Title */ text_reading_lyrics_bon_odori_title,
        /* Text  */ text_reading_lyrics_bon_odori,
        /* GFX   */ reading_style_sea_gfx_table,
        /* BGM   */ &reading_style_sea_bgm
    },
    /* "Lyrics - Honey Sweet Angel of Love" */ {
        /* Title */ text_reading_lyrics_sweet_angel_title,
        /* Text  */ text_reading_lyrics_sweet_angel,
        /* GFX   */ reading_style_sea_gfx_table,
        /* BGM   */ &reading_style_sea_bgm
    },
    /* "Lyrics - WISH Can't Wait For You" */ {
        /* Title */ text_reading_lyrics_wish_title,
        /* Text  */ text_reading_lyrics_wish,
        /* GFX   */ reading_style_sea_gfx_table,
        /* BGM   */ &reading_style_sea_bgm
    },
    /* "The Final Letter" */ {
        /* Title */ text_reading_the_final_letter_title,
        /* Text  */ text_reading_the_final_letter,
        /* GFX   */ reading_style_mail_gfx_table,
        /* BGM   */ &reading_style_mail_bgm
    },
    /* "The Ninja Scroll" */ {
        /* Title */ text_reading_the_ninja_scroll_title,
        /* Text  */ text_reading_the_ninja_scroll,
        /* GFX   */ reading_style_cherry_gfx_table,
        /* BGM   */ &reading_style_cherry_bgm
    },
    /* "Rhythm Stand-Up" */ {
        /* Title */ text_reading_rhythm_stand_up_title,
        /* Text  */ text_reading_rhythm_stand_up,
        /* GFX   */ reading_style_manzai_gfx_table,
        /* BGM   */ &reading_style_manzai_bgm
    },
    /* "Fan Mailbag" */ {
        /* Title */ text_reading_fan_mailbag_title,
        /* Text  */ text_reading_fan_mailbag,
        /* GFX   */ reading_style_mail_gfx_table,
        /* BGM   */ &reading_style_mail_bgm
    },
    /* "The Rhythm Formula" */ {
        /* Title */ text_reading_the_rhythm_formula_title,
        /* Text  */ text_reading_the_rhythm_formula,
        /* GFX   */ reading_style_classroom_gfx_table,
        /* BGM   */ &reading_style_classroom_bgm
    },
    /* "Rhythm Diagnosis" */ {
        /* Title */ text_reading_rhythm_diagnosis_title,
        /* Text  */ text_reading_rhythm_diagnosis,
        /* GFX   */ reading_style_classroom_gfx_table,
        /* BGM   */ &reading_style_classroom_bgm
    },
    /* "Rhythm Poem Digest" */ {
        /* Title */ text_reading_rhythm_poem_digest_title,
        /* Text  */ text_reading_rhythm_poem_digest,
        /* GFX   */ reading_style_sea_gfx_table,
        /* BGM   */ &reading_style_sea_bgm
    },
    /* "Rhythm Haiku Folio" */ {
        /* Title */ text_reading_rhythm_haiku_folio_title,
        /* Text  */ text_reading_rhythm_haiku_folio,
        /* GFX   */ reading_style_haiku_gfx_table,
        /* BGM   */ &reading_style_haiku_bgm
    }
};

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
    /* Title */ text_reading_invalid_title,
    /* Text  */ text_reading_invalid,
    /* GFX   */ text_reading_invalid_gfx_table,
    /* BGM   */ NULL
};
