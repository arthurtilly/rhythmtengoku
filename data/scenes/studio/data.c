#include "global.h"
#include "graphics.h"
#include "src/scenes/studio.h"
#include "graphics/studio/studio_graphics.h"
#include "text/studio_text.h"


  /* STUDIO MENU - SCENE DATA */


#include "songs.inc.c"

// [D_089d83d0] Drum Kit Names
const char *studio_drum_kit_names[] = {
    text_studio_kit_standard_drum,
    text_studio_kit_dry_drum,
    text_studio_kit_power_drum,
    text_studio_kit_techno_drum,
    text_studio_kit_matte_drum,
    text_studio_kit_asian_drum,
    text_studio_kit_light_drum,
    text_studio_kit_heavy_drum,
    text_studio_kit_hihat_drum,
    text_studio_kit_heel_tech_drum_1,
    text_studio_kit_heel_tech_drum_2,
    text_studio_kit_sfx_drum,
    text_studio_kit_tap_drum,
    text_studio_kit_air_cutter_drum,
    text_studio_kit_samurai_drum,
};

// [D_089d840c] Memory Warnings
const char *studio_mem_warnings_text[] = {
    NULL,
    text_studio_warning_no_mem,
    text_studio_warning_no_slots,
    text_studio_warning_low_mem,
};

// [D_089d841c] Options (no replay for this song)
const char *studio_options_no_replay[] = {
    text_studio_option_listen,
    text_studio_option_drum,
    text_studio_option_sort,
    text_studio_option_mark,
};

// [D_089d842c] Options (replay exists for this song)
const char *studio_options_has_replay[] = {
    text_studio_option_listen,
    text_studio_option_delete,
    text_studio_option_sort,
    text_studio_option_mark,
};

// [D_089d843c] Options Text
const char **studio_options_text[] = {
    studio_options_no_replay,
    studio_options_has_replay,
};

// [D_089d8444] Animation/Playback Data..?
u8 D_089d8444[] = {
    /* 0x00 */ 4,
    /* 0x01 */ 4,
    /* 0x02 */ 0,
    /* 0x03 */ 0
};

// [D_089d8448] Graphics Table
struct GraphicsTable studio_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd5d64,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd62ec,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd6434,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cd5288,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ studio_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ studio_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089d849c] Buffered Textures List
struct CompressedGraphics *studio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089d84a0] ?
u16 D_089d84a0[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 104,
    /* 0x02 */ 240
};

// [D_089d84a6] ?
u8 D_089d84a6[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 2,
    /* 0x02 */ 3
};
