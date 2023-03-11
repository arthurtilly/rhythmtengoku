#include "global.h"
#include "graphics.h"
#include "src/scenes/reading.h"
#include "graphics/data_room/data_room_graphics.h"
#include "text/reading_text.h"


  /* RHYTHM DATA ROOM (READING) - SCENE DATA */


// [D_089d7c34] Graphics Table
struct GraphicsTable D_089d7c34[] = {
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
        /* Src.  */ read_error_bg_00_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7c70] BGM
struct SequenceData *D_089d7c70 = &s_f_env_cherry_seqData;

// [D_089d7c74] Graphics Table
struct GraphicsTable D_089d7c74[] = {
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
        /* Src.  */ data_room_reading_bg_06_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7cb0] BGM
struct SequenceData *D_089d7cb0 = &s_f_env_train_seqData;

// [D_089d7cb4] Graphics Table
struct GraphicsTable D_089d7cb4[] = {
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
        /* Src.  */ read_error_bg_01_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7cf0] BGM
struct SequenceData *D_089d7cf0 = &s_sindan_sea_seqData;

// [D_089d7cf4] Graphics Table
struct GraphicsTable D_089d7cf4[] = {
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
        /* Src.  */ data_room_reading_bg_04_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7d30] BGM
struct SequenceData *D_089d7d30 = &s_f_env_haiku_seqData;

// [D_089d7d34] Graphics Table
struct GraphicsTable D_089d7d34[] = {
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
        /* Src.  */ data_room_reading_bg_05_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7d70] BGM
struct SequenceData *D_089d7d70 = &s_f_env_class_room_seqData;

// [D_089d7d74] Graphics Table (0)
struct GraphicsTable D_089d7d74[] = {
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
        /* Src.  */ data_room_reading_bg_00_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7db0]
struct SequenceData *D_089d7db0 = &s_sindan_sea_seqData;

// [D_089d7db4] Graphics Table
struct GraphicsTable D_089d7db4[] = {
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
        /* Src.  */ data_room_reading_bg_02_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7df0] BGM
struct SequenceData *D_089d7df0 = &s_sindan_sea_seqData;

// [D_089d7df4] Graphics Table
struct GraphicsTable D_089d7df4[] = {
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
        /* Src.  */ data_room_reading_bg_03_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7e30] BGM
struct SequenceData *D_089d7e30 = &s_sindan_mail_seqData;

// [D_089d7e34] Graphics Table
struct GraphicsTable D_089d7e34[] = {
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
        /* Src.  */ data_room_reading_bg_01_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7e70] BGM
struct SequenceData *D_089d7e70 = &s_sindan_manzai_seqData;

// [D_089d7e74] Reading Material Table
struct ReadingMaterial reading_material_table[] = {
    /* "Rhythm Tengoku Welcome" */ {
        /* Title */ text_reading_rhythm_tengoku_welcome_title,
        /* Text  */ text_reading_rhythm_tengoku_welcome,
        /* GFX   */ D_089d7df4,
        /* BGM   */ &D_089d7e30
    },
    /* "Handling Instructions" */ {
        /* Title */ text_reading_handling_instructions_title,
        /* Text  */ text_reading_handling_instructions,
        /* GFX   */ D_089d7c34,
        /* BGM   */ &D_089d7c70
    },
    /* "More Than a Barista" */ {
        /* Title */ text_reading_more_than_a_barista_title,
        /* Text  */ text_reading_more_than_a_barista,
        /* GFX   */ D_089d7c74,
        /* BGM   */ &D_089d7cb0
    },
    /* "Letter to the Editor" */ {
        /* Title */ text_reading_letter_to_the_editor_title,
        /* Text  */ text_reading_letter_to_the_editor,
        /* GFX   */ D_089d7c74,
        /* BGM   */ &D_089d7cb0
    },
    /* "Night Walk Riddle" */ {
        /* Title */ text_reading_night_walk_riddle_title,
        /* Text  */ text_reading_night_walk_riddle,
        /* GFX   */ D_089d7c74,
        /* BGM   */ &D_089d7cb0
    },
    /* "Inside Spaceball" */ {
        /* Title */ text_reading_inside_spaceball_title,
        /* Text  */ text_reading_inside_spaceball,
        /* GFX   */ D_089d7c74,
        /* BGM   */ &D_089d7cb0
    },
    /* "Horse Machine's Story" */ {
        /* Title */ text_reading_horse_machines_story_title,
        /* Text  */ text_reading_horse_machines_story,
        /* GFX   */ D_089d7c74,
        /* BGM   */ &D_089d7cb0
    },
    /* "Marcher's Diary" */ {
        /* Title */ text_reading_marchers_diary_title,
        /* Text  */ text_reading_marchers_diary,
        /* GFX   */ D_089d7c34,
        /* BGM   */ &D_089d7c70
    },
    /* "Rap Report" */ {
        /* Title */ text_reading_rap_report_title,
        /* Text  */ text_reading_rap_report,
        /* GFX   */ D_089d7c34,
        /* BGM   */ &D_089d7c70
    },
    /* "Lyrics - The Bon Odori" */ {
        /* Title */ text_reading_lyrics_bon_odori_title,
        /* Text  */ text_reading_lyrics_bon_odori,
        /* GFX   */ D_089d7cb4,
        /* BGM   */ &D_089d7cf0
    },
    /* "Lyrics - Honey Sweet Angel of Love" */ {
        /* Title */ text_reading_lyrics_sweet_angel_title,
        /* Text  */ text_reading_lyrics_sweet_angel,
        /* GFX   */ D_089d7cb4,
        /* BGM   */ &D_089d7cf0
    },
    /* "Lyrics - WISH Can't Wait For You" */ {
        /* Title */ text_reading_lyrics_wish_title,
        /* Text  */ text_reading_lyrics_wish,
        /* GFX   */ D_089d7cb4,
        /* BGM   */ &D_089d7cf0
    },
    /* "The Final Letter" */ {
        /* Title */ text_reading_the_final_letter_title,
        /* Text  */ text_reading_the_final_letter,
        /* GFX   */ D_089d7df4,
        /* BGM   */ &D_089d7e30
    },
    /* "The Ninja Scroll" */ {
        /* Title */ text_reading_the_ninja_scroll_title,
        /* Text  */ text_reading_the_ninja_scroll,
        /* GFX   */ D_089d7c34,
        /* BGM   */ &D_089d7c70
    },
    /* "Rhythm Stand-Up" */ {
        /* Title */ text_reading_rhythm_stand_up_title,
        /* Text  */ text_reading_rhythm_stand_up,
        /* GFX   */ D_089d7e34,
        /* BGM   */ &D_089d7e70
    },
    /* "Fan Mailbag" */ {
        /* Title */ text_reading_fan_mailbag_title,
        /* Text  */ text_reading_fan_mailbag,
        /* GFX   */ D_089d7df4,
        /* BGM   */ &D_089d7e30
    },
    /* "The Rhythm Formula" */ {
        /* Title */ text_reading_the_rhythm_formula_title,
        /* Text  */ text_reading_the_rhythm_formula,
        /* GFX   */ D_089d7d34,
        /* BGM   */ &D_089d7d70
    },
    /* "Rhythm Diagnosis" */ {
        /* Title */ text_reading_rhythm_diagnosis_title,
        /* Text  */ text_reading_rhythm_diagnosis,
        /* GFX   */ D_089d7d34,
        /* BGM   */ &D_089d7d70
    },
    /* "Rhythm Poem Digest" */ {
        /* Title */ text_reading_rhythm_poem_digest_title,
        /* Text  */ text_reading_rhythm_poem_digest,
        /* GFX   */ D_089d7cb4,
        /* BGM   */ &D_089d7cf0
    },
    /* "Rhythm Haiku Folio" */ {
        /* Title */ text_reading_rhythm_haiku_folio_title,
        /* Text  */ text_reading_rhythm_haiku_folio,
        /* GFX   */ D_089d7cf4,
        /* BGM   */ &D_089d7d30
    }
};

// [D_089d7fb4] Graphics Table
struct GraphicsTable D_089d7fb4[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cccb04,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ data_room_reading_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d7fe4] Buffered Textures List
struct CompressedGraphics *D_089d7fe4[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089d7fe8] Default Reading Material (Error Case)
struct ReadingMaterial D_089d7fe8 = {
    /* Title */ text_reading_invalid_title,
    /* Text  */ text_reading_invalid,
    /* GFX   */ text_reading_invalid_gfx_table,
    /* BGM   */ NULL
};
