#include "engines/drum_live.h"


  /* DRUM LIVE - GAME ENGINE DATA */


extern const struct Animation anim_drum_girl_head[];
extern const struct Animation anim_drum_boy_head[];
extern const struct Animation anim_band_drummer_head[];
extern const struct Animation anim_drum_girl_body[];
extern const struct Animation anim_drum_boy_body[];
extern const struct Animation anim_band_drummer_body[];
extern const struct Animation anim_drum_girl_head_turn_l[];
extern const struct Animation anim_drum_boy_head_turn_l[];
extern const struct Animation anim_band_drummer_head_turn_l[];
extern const struct Animation anim_drum_girl_head_turn_r[];
extern const struct Animation anim_drum_boy_head_turn_r[];
extern const struct Animation anim_band_drummer_head_turn_r[];
extern const struct Animation anim_drum_girl_use_splash[];
extern const struct Animation anim_drum_boy_use_splash[];
extern const struct Animation anim_band_drummer_use_splash[];
extern const struct Animation anim_drum_girl_use_snare_l[];
extern const struct Animation anim_drum_boy_use_snare_l[];
extern const struct Animation anim_band_drummer_use_snare_l[];
extern const struct Animation anim_drum_girl_use_crash[];
extern const struct Animation anim_drum_boy_use_crash[];
extern const struct Animation anim_band_drummer_use_crash[];
extern const struct Animation anim_drum_girl_use_snare_r[];
extern const struct Animation anim_drum_boy_use_snare_r[];
extern const struct Animation anim_band_drummer_use_snare_r[];
extern const struct Animation anim_drum_girl_use_hihat[];
extern const struct Animation anim_drum_boy_use_hihat[];
extern const struct Animation anim_band_drummer_use_hihat[];
extern const struct Animation anim_drum_girl_use_tom[];
extern const struct Animation anim_drum_boy_use_tom[];
extern const struct Animation anim_band_drummer_use_tom[];
extern const struct Animation anim_drum_girl_kit_splash[];
extern const struct Animation anim_drum_boy_kit_splash[];
extern const struct Animation anim_band_drum_kit_splash[];
extern const struct Animation anim_drum_girl_kit_crash[];
extern const struct Animation anim_drum_boy_kit_crash[];
extern const struct Animation anim_band_drum_kit_crash[];
extern const struct Animation anim_drum_girl_kit_bass_l[];
extern const struct Animation anim_drum_boy_kit_bass_l[];
extern const struct Animation anim_band_drum_kit_bass_l[];
extern const struct Animation anim_drum_girl_kit_bass_r[];
extern const struct Animation anim_drum_boy_kit_bass_r[];
extern const struct Animation anim_band_drum_kit_bass_r[];
extern const struct Animation anim_drum_girl_kit_snare[];
extern const struct Animation anim_drum_boy_kit_snare[];
extern const struct Animation anim_band_drum_kit_snare[];
extern const struct Animation anim_drum_girl_kit_hihat[];
extern const struct Animation anim_drum_boy_kit_hihat[];
extern const struct Animation anim_band_drum_kit_hihat[];
extern const struct Animation anim_drum_girl_kit_tom[];
extern const struct Animation anim_drum_boy_kit_tom[];
extern const struct Animation anim_band_drum_kit_tom[];
extern const struct Animation anim_bass_girl_head[];
extern const struct Animation anim_bass_boy_head[];
extern const struct Animation anim_band_bassist_head[];
extern const struct Animation anim_bass_girl_body[];
extern const struct Animation anim_bass_boy_body[];
extern const struct Animation anim_band_saxophonists_play[];
extern const struct Animation anim_bass_girl_legs[];
extern const struct Animation anim_bass_boy_legs[];
extern const struct Animation anim_band_bassist_legs[];
extern const struct Animation anim_bass_girl_arm_l[];
extern const struct Animation anim_bass_boy_arm_l[];
extern const struct Animation anim_band_bassist_arm_l[];
extern const struct Animation anim_bass_girl_arm_r[];
extern const struct Animation anim_bass_boy_arm_r[];
extern const struct Animation anim_band_bassist_arm_r[];
extern const struct Animation anim_bass_girl_crouch[];
extern const struct Animation anim_bass_boy_crouch[];
extern const struct Animation anim_band_bassist_crouch[];
extern const struct Animation anim_bass_girl_jump[];
extern const struct Animation anim_bass_boy_jump[];
extern const struct Animation anim_band_bassist_jump[];
extern const struct Animation anim_bass_girl_head_turn_l[];
extern const struct Animation anim_bass_boy_head_turn_l[];
extern const struct Animation anim_band_bassist_head_turn_l[];
extern const struct Animation anim_bass_girl_head_turn_r[];
extern const struct Animation anim_bass_boy_head_turn_r[];
extern const struct Animation anim_band_bassist_head_turn_r[];
extern const struct Animation anim_bass_girl_jump_strum[];
extern const struct Animation anim_bass_boy_jump_strum[];
extern const struct Animation anim_band_bassist_jump_strum[];
extern const struct Animation anim_guitar_girl_head[];
extern const struct Animation anim_guitar_boy_head[];
extern const struct Animation anim_band_guitarist_head[];
extern const struct Animation anim_guitar_girl_body[];
extern const struct Animation anim_guitar_boy_body[];
extern const struct Animation anim_band_trumpeters_play[];
extern const struct Animation anim_guitar_girl_legs[];
extern const struct Animation anim_guitar_boy_legs[];
extern const struct Animation anim_band_guitarist_legs[];
extern const struct Animation anim_guitar_girl_arm_l[];
extern const struct Animation anim_guitar_boy_arm_l[];
extern const struct Animation anim_band_guitarist_arm_l[];
extern const struct Animation anim_guitar_girl_arm_r[];
extern const struct Animation anim_guitar_boy_arm_r[];
extern const struct Animation anim_band_guitarist_arm_r[];
extern const struct Animation anim_guitar_girl_crouch[];
extern const struct Animation anim_guitar_boy_crouch[];
extern const struct Animation anim_band_guitarist_crouch[];
extern const struct Animation anim_guitar_girl_jump[];
extern const struct Animation anim_guitar_boy_jump[];
extern const struct Animation anim_band_guitarist_jump[];
extern const struct Animation anim_guitar_girl_jump_strum[];
extern const struct Animation anim_guitar_boy_jump_strum[];
extern const struct Animation anim_band_guitarist_jump_strum[];
extern const struct Animation anim_guitar_girl_head_turn_r[];
extern const struct Animation anim_guitar_boy_head_turn_r[];
extern const struct Animation anim_band_guitarist_head_turn_r[];
extern const struct Animation anim_guitar_girl_head_turn_l[];
extern const struct Animation anim_guitar_boy_head_turn_l[];
extern const struct Animation anim_band_guitarist_head_turn_l[];
extern const struct Animation anim_drum_girls_rec_mode_icon[];
extern const struct Animation anim_drum_boys_rec_mode_icon[];
extern const struct Animation anim_drum_band_rec_mode_icon[];
extern const struct Animation anim_drum_girls_adjust_mode_icon[];
extern const struct Animation anim_drum_boys_adjust_mode_icon[];
extern const struct Animation anim_drum_band_adjust_mode_icon[];
extern const struct Animation anim_drum_girls_busy_icon[];
extern const struct Animation anim_drum_boys_busy_icon[];
extern const struct Animation anim_drum_band_busy_icon[];
extern const struct Animation anim_drum_girls_microphone[];
extern const struct Animation anim_drum_boys_microphone[];
extern const struct Animation anim_drum_band_microphone[];
extern const struct Animation anim_drum_girls_light_flash[];
extern const struct Animation anim_drum_boys_light_flash[];
extern const struct Animation anim_drum_band_light_flash[];

extern const Palette drum_girls_obj_pal[];
extern const Palette drum_girls_bg_pal[];
extern const Palette drum_boys_obj_pal[];
extern const Palette drum_boys_bg_pal[];
extern const Palette drum_samurai_band_obj_pal[];
extern const Palette drum_samurai_band_bg_pal[];

extern const struct CompressedGraphics D_08c47038;
extern const struct CompressedGraphics D_08c47dc4;
extern const struct CompressedGraphics D_08c45f10;
extern const struct CompressedGraphics D_08c47930;
extern const struct CompressedGraphics D_08c47ed4;
extern const struct CompressedGraphics D_08c4356c;
extern const struct CompressedGraphics D_08c439d0;
extern const struct CompressedGraphics D_08c4241c;
extern const struct CompressedGraphics D_08bd7c30;
extern const struct CompressedGraphics D_08bd8060;
extern const struct CompressedGraphics D_08bd6c44;


  //  //  //  ANIMATION DATA  //  //  //


// [D_089e03f8] All Animations
const struct Animation *const drum_live_anim[][3] = {
    /* 0x00 */ { anim_drum_girl_head, anim_drum_boy_head, anim_band_drummer_head },
    /* 0x01 */ { anim_drum_girl_body, anim_drum_boy_body, anim_band_drummer_body },
    /* 0x02 */ { anim_drum_girl_head_turn_l, anim_drum_boy_head_turn_l, anim_band_drummer_head_turn_l },
    /* 0x03 */ { anim_drum_girl_head_turn_r, anim_drum_boy_head_turn_r, anim_band_drummer_head_turn_r },
    /* 0x04 */ { anim_drum_girl_use_splash, anim_drum_boy_use_splash, anim_band_drummer_use_splash },
    /* 0x05 */ { anim_drum_girl_use_snare_l, anim_drum_boy_use_snare_l, anim_band_drummer_use_snare_l },
    /* 0x06 */ { anim_drum_girl_use_crash, anim_drum_boy_use_crash, anim_band_drummer_use_crash },
    /* 0x07 */ { anim_drum_girl_use_snare_r, anim_drum_boy_use_snare_r, anim_band_drummer_use_snare_r },
    /* 0x08 */ { anim_drum_girl_use_hihat, anim_drum_boy_use_hihat, anim_band_drummer_use_hihat },
    /* 0x09 */ { anim_drum_girl_use_tom, anim_drum_boy_use_tom, anim_band_drummer_use_tom },
    /* 0x0A */ { anim_drum_girl_kit_splash, anim_drum_boy_kit_splash, anim_band_drum_kit_splash },
    /* 0x0B */ { anim_drum_girl_kit_crash, anim_drum_boy_kit_crash, anim_band_drum_kit_crash },
    /* 0x0C */ { anim_drum_girl_kit_bass_l, anim_drum_boy_kit_bass_l, anim_band_drum_kit_bass_l },
    /* 0x0D */ { anim_drum_girl_kit_bass_r, anim_drum_boy_kit_bass_r, anim_band_drum_kit_bass_r },
    /* 0x0E */ { anim_drum_girl_kit_snare, anim_drum_boy_kit_snare, anim_band_drum_kit_snare },
    /* 0x0F */ { anim_drum_girl_kit_hihat, anim_drum_boy_kit_hihat, anim_band_drum_kit_hihat },
    /* 0x10 */ { anim_drum_girl_kit_tom, anim_drum_boy_kit_tom, anim_band_drum_kit_tom },
    /* 0x11 */ { anim_bass_girl_head, anim_bass_boy_head, anim_band_bassist_head },
    /* 0x12 */ { anim_bass_girl_body, anim_bass_boy_body, anim_band_saxophonists_play },
    /* 0x13 */ { anim_bass_girl_legs, anim_bass_boy_legs, anim_band_bassist_legs },
    /* 0x14 */ { anim_bass_girl_arm_l, anim_bass_boy_arm_l, anim_band_bassist_arm_l },
    /* 0x15 */ { anim_bass_girl_arm_r, anim_bass_boy_arm_r, anim_band_bassist_arm_r },
    /* 0x16 */ { anim_bass_girl_crouch, anim_bass_boy_crouch, anim_band_bassist_crouch },
    /* 0x17 */ { anim_bass_girl_jump, anim_bass_boy_jump, anim_band_bassist_jump },
    /* 0x18 */ { anim_bass_girl_head_turn_l, anim_bass_boy_head_turn_l, anim_band_bassist_head_turn_l },
    /* 0x19 */ { anim_bass_girl_head_turn_r, anim_bass_boy_head_turn_r, anim_band_bassist_head_turn_r },
    /* 0x1A */ { anim_bass_girl_jump_strum, anim_bass_boy_jump_strum, anim_band_bassist_jump_strum },
    /* 0x1B */ { anim_guitar_girl_head, anim_guitar_boy_head, anim_band_guitarist_head },
    /* 0x1C */ { anim_guitar_girl_body, anim_guitar_boy_body, anim_band_trumpeters_play },
    /* 0x1D */ { anim_guitar_girl_legs, anim_guitar_boy_legs, anim_band_guitarist_legs },
    /* 0x1E */ { anim_guitar_girl_arm_l, anim_guitar_boy_arm_l, anim_band_guitarist_arm_l },
    /* 0x1F */ { anim_guitar_girl_arm_r, anim_guitar_boy_arm_r, anim_band_guitarist_arm_r },
    /* 0x20 */ { anim_guitar_girl_crouch, anim_guitar_boy_crouch, anim_band_guitarist_crouch },
    /* 0x21 */ { anim_guitar_girl_jump, anim_guitar_boy_jump, anim_band_guitarist_jump },
    /* 0x22 */ { anim_guitar_girl_jump_strum, anim_guitar_boy_jump_strum, anim_band_guitarist_jump_strum },
    /* 0x23 */ { anim_guitar_girl_head_turn_r, anim_guitar_boy_head_turn_r, anim_band_guitarist_head_turn_r },
    /* 0x24 */ { anim_guitar_girl_head_turn_l, anim_guitar_boy_head_turn_l, anim_band_guitarist_head_turn_l },
    /* 0x25 */ { anim_drum_girls_rec_mode_icon, anim_drum_boys_rec_mode_icon, anim_drum_band_rec_mode_icon },
    /* 0x26 */ { anim_drum_girls_adjust_mode_icon, anim_drum_boys_adjust_mode_icon, anim_drum_band_adjust_mode_icon },
    /* 0x27 */ { anim_drum_girls_busy_icon, anim_drum_boys_busy_icon, anim_drum_band_busy_icon },
    /* 0x28 */ { anim_drum_girls_microphone, anim_drum_boys_microphone, anim_drum_band_microphone },
    /* 0x29 */ { anim_drum_girls_light_flash, anim_drum_boys_light_flash, anim_drum_band_light_flash }
};

// [D_089e05f0] Animation Table
const struct Animation *const *const drum_live_anim_table[] = {
    /* 0x00 */ drum_live_anim[0],
    /* 0x01 */ drum_live_anim[1],
    /* 0x02 */ drum_live_anim[2],
    /* 0x03 */ drum_live_anim[3],
    /* 0x04 */ drum_live_anim[4],
    /* 0x05 */ drum_live_anim[5],
    /* 0x06 */ drum_live_anim[6],
    /* 0x07 */ drum_live_anim[7],
    /* 0x08 */ drum_live_anim[8],
    /* 0x09 */ drum_live_anim[9],
    /* 0x0A */ drum_live_anim[10],
    /* 0x0B */ drum_live_anim[11],
    /* 0x0C */ drum_live_anim[12],
    /* 0x0D */ drum_live_anim[13],
    /* 0x0E */ drum_live_anim[14],
    /* 0x0F */ drum_live_anim[15],
    /* 0x10 */ drum_live_anim[16],
    /* 0x11 */ drum_live_anim[17],
    /* 0x12 */ drum_live_anim[18],
    /* 0x13 */ drum_live_anim[19],
    /* 0x14 */ drum_live_anim[20],
    /* 0x15 */ drum_live_anim[21],
    /* 0x16 */ drum_live_anim[22],
    /* 0x17 */ drum_live_anim[23],
    /* 0x18 */ drum_live_anim[24],
    /* 0x19 */ drum_live_anim[25],
    /* 0x1A */ drum_live_anim[26],
    /* 0x1B */ drum_live_anim[27],
    /* 0x1C */ drum_live_anim[28],
    /* 0x1D */ drum_live_anim[29],
    /* 0x1E */ drum_live_anim[30],
    /* 0x1F */ drum_live_anim[31],
    /* 0x20 */ drum_live_anim[32],
    /* 0x21 */ drum_live_anim[33],
    /* 0x22 */ drum_live_anim[34],
    /* 0x23 */ drum_live_anim[35],
    /* 0x24 */ drum_live_anim[36],
    /* 0x25 */ drum_live_anim[37],
    /* 0x26 */ drum_live_anim[38],
    /* 0x27 */ drum_live_anim[39],
    /* 0x28 */ drum_live_anim[40],
    /* 0x29 */ drum_live_anim[41]
};


  //  //  //  BG DATA  //  //  //


// [D_089e0698] OBJ Palettes
const Palette *const drum_live_obj_palettes[] = {
    /* 0x00 */ drum_girls_obj_pal,
    /* 0x01 */ drum_boys_obj_pal,
    /* 0x02 */ drum_samurai_band_obj_pal
};

// [D_089e06a4] BG Palettes
const Palette *const drum_live_bg_palettes[] = {
    /* 0x00 */ drum_girls_bg_pal,
    /* 0x01 */ drum_boys_bg_pal,
    /* 0x02 */ drum_samurai_band_bg_pal
};

// [D_089e06b0] Bit Masks/Fields
const u16 D_089e06b0[] = {
    /* 0x00 */ 0x0000,
    /* 0x01 */ 0x7C00,
    /* 0x02 */ 0x001F,
    /* 0x03 */ 0x7C1F,
    /* 0x04 */ 0x03E0,
    /* 0x05 */ 0x7FE0,
    /* 0x06 */ 0x03FF,
    /* 0x07 */ 0x7FFF
};

// [D_089e06c0] ?
const u8 D_089e06c0[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 2,
    /* 0x02 */ 4,
    /* 0x03 */ 6
};

// [D_089e06c4] ?
const u16 D_089e06c4[] = {
    0x1400, 0x3000, 0x7ED4, 0x68C4,
    0x7FDC, 0x68C4, 0x06C4, 0x189E
};

// [D_089e06d4] ?
const u16 D_089e06d4[] = {
    0x0500, 0x3000, 0x80E4, 0x68C4,
    0x7FDC, 0x68C4, 0x7ED4, 0x68C4,
    0x06C4, 0x189E
};

// [D_089e06e8] ?
const u16 D_089e06e8[] = {
    0x0500, 0x3000, 0x81F4, 0x68C4,
    0x80E4, 0x68C4, 0x7FDC, 0x68C4,
    0x7ED4, 0x68C4, 0x06C4, 0x189E,
    0x1400, 0x3000, 0x8458, 0x68C4,
    0x8328, 0x68C4, 0x0700, 0x189E
};

// [D_089e0710] ?
const u16 D_089e0710[] = {
    0x0500, 0x3000, 0x86F4, 0x68C4,
    0x85A4, 0x68C4, 0x8458, 0x68C4,
    0x2800, 0x3000, 0x8328, 0x68C4,
    0x0700, 0x189E, 0x1400, 0x3000,
    0x89FC, 0x68C4, 0x8874, 0x68C4,
    0x072C, 0x189E
};

// [D_089e073c] ?
const u16 D_089e073c[] = {
    0x0500, 0x3000, 0x8CFC, 0x68C4,
    0x8B84, 0x68C4, 0x89FC, 0x68C4,
    0x2800, 0x3000, 0x8874, 0x68C4,
    0x072C, 0x189E
};

// [D_089e0758] Crowd BG Map Data
const u16 *const D_089e0758[] = {
    /* 0x00 */ D_089e06c4,
    /* 0x01 */ D_089e06d4,
    /* 0x02 */ D_089e06e8,
    /* 0x03 */ D_089e0710,
    /* 0x04 */ D_089e073c
};


  //  //  //  DRUM KIT DATA  //  //  //


#include "drum_live_kits.inc.c"

// [D_089e0978] Drum LIVE Kits
const struct DrumTechKit *const drum_live_kits[] = {
    /* 0x00 */ &D_089e0854,
    /* 0x01 */ &D_089e0950
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e0980] Buffered Textures List
const struct CompressedGraphics *const drum_live_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e0984] Graphics Table (Drum Girls LIVE)
const struct GraphicsTable gfx_table_drum_girls_live[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c47038,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c47dc4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c45f10,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_girls_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_girls_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08c47930,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c47ed4,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e09e4] Graphics Table (Drum Boys LIVE)
const struct GraphicsTable gfx_table_drum_boys_live[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c4356c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c439d0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c4241c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_boys_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_boys_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08c47930,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c47ed4,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0a44] Graphics Table (Drum Samurai's Band LIVE)
const struct GraphicsTable gfx_table_drum_samurai_band_live[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bd7c30,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bd8060,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bd6c44,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_samurai_band_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_samurai_band_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08c47930,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c47ed4,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0aa4] Graphics Table Index
const struct GraphicsTable *const drum_live_gfx_tables[] = {
    /* 0x00 */ gfx_table_drum_girls_live,
    /* 0x01 */ gfx_table_drum_boys_live,
    /* 0x02 */ gfx_table_drum_samurai_band_live
};

// [D_089e0ab0] ?
const struct Vector2 D_089e0ab0[] = {
    /* 0x00 */ {   0,   0 },
    /* 0x01 */ {   0,   0 },
    /* 0x02 */ {   0,   0 },
    /* 0x03 */ {   0,   0 },
    /* 0x04 */ {   0,   0 },
    /* 0x05 */ {   0,   0 },
    /* 0x06 */ { -56,   8 },
    /* 0x07 */ { 112,  -8 },
    /* 0x08 */ {  -8, -36 },
};

// [D_089e0ad4] Guitarist Animation IDs - Head
const u8 drum_live_guitarist_anim_map_head[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_HEAD,
    /* 0x01 */ LIVE_ANIM_BASSIST_HEAD,
};

// [D_089e0ad6] Guitarist Animation IDs - Body
const u8 drum_live_guitarist_anim_map_body[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_BODY,
    /* 0x01 */ LIVE_ANIM_BASSIST_BODY,
};

// [D_089e0ad8] Guitarist Animation IDs - Legs
const u8 drum_live_guitarist_anim_map_legs[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_LEGS,
    /* 0x01 */ LIVE_ANIM_BASSIST_LEGS,
};

// [D_089e0ada] Guitarist Animation IDs - Left Arm
const u8 drum_live_guitarist_anim_map_arm_l[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_ARM_L,
    /* 0x01 */ LIVE_ANIM_BASSIST_ARM_L,
};

// [D_089e0adc] Guitarist Animation IDs - Right Arm
const u8 drum_live_guitarist_anim_map_arm_r[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_ARM_R,
    /* 0x01 */ LIVE_ANIM_BASSIST_ARM_R,
};

// [D_089e0ade] Guitarist Animation IDs - Crouch
const u8 drum_live_guitarist_anim_map_crouch[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_CROUCH,
    /* 0x01 */ LIVE_ANIM_BASSIST_CROUCH,
};

// [D_089e0ae0] Guitarist Animation IDs - Jump & Strum
const u8 drum_live_guitarist_anim_map_jump_strum[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_JUMP_STRUM,
    /* 0x01 */ LIVE_ANIM_BASSIST_JUMP_STRUM,
};

// [D_089e0ae2] Guitarist Animation IDs - Jump
const u8 drum_live_guitarist_anim_map_jump[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_JUMP,
    /* 0x01 */ LIVE_ANIM_BASSIST_JUMP
};

// [D_089e0ae4] Drum Kit ID Map
const u8 drum_live_kit_map[] = {
    /* 0x00 */ 0,
    /* 0x01 */ 0,
    /* 0x02 */ 1,
    /* 0x03 */ 0
};


  //  //  //  CUE DATA  //  //  //


// [D_089e0ae8] Cue 00 (?)
const struct CueDefinition drum_live_cue_00 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ drum_live_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ drum_live_cue_update,
    /* Func. Despawn   */ drum_live_cue_despawn,
    /* Func. Hit       */ drum_live_cue_hit,
    /* Func. Barely    */ drum_live_cue_barely,
    /* Func. Miss      */ drum_live_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0b28] Cue 01 (?)
const struct CueDefinition drum_live_cue_01 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x03, 0x03,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ drum_live_cue_spawn,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ drum_live_cue_update,
    /* Func. Despawn   */ drum_live_cue_despawn,
    /* Func. Hit       */ drum_live_cue_hit,
    /* Func. Barely    */ drum_live_cue_barely,
    /* Func. Miss      */ drum_live_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0b68] Cue 02 (?)
const struct CueDefinition drum_live_cue_02 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x02, 0x02,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ drum_live_cue_spawn,
    /* Spawn Parameter */ 2,
    /* Func. Update    */ drum_live_cue_update,
    /* Func. Despawn   */ drum_live_cue_despawn,
    /* Func. Hit       */ drum_live_cue_hit,
    /* Func. Barely    */ drum_live_cue_barely,
    /* Func. Miss      */ drum_live_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0ba8] Cue 03 (?)
const struct CueDefinition drum_live_cue_03 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ drum_live_cue_spawn,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ drum_live_cue_update,
    /* Func. Despawn   */ drum_live_cue_despawn,
    /* Func. Hit       */ drum_live_cue_hit,
    /* Func. Barely    */ drum_live_cue_barely,
    /* Func. Miss      */ drum_live_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0be8] Cue 04 (?)
const struct CueDefinition drum_live_cue_04 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x03, 0x03,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ drum_live_cue_spawn,
    /* Spawn Parameter */ 4,
    /* Func. Update    */ drum_live_cue_update,
    /* Func. Despawn   */ drum_live_cue_despawn,
    /* Func. Hit       */ drum_live_cue_hit,
    /* Func. Barely    */ drum_live_cue_barely,
    /* Func. Miss      */ drum_live_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0c28] Cue 05 (?)
const struct CueDefinition drum_live_cue_05 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x02, 0x02,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0xc,
    /* Func. Spawn     */ drum_live_cue_spawn,
    /* Spawn Parameter */ 5,
    /* Func. Update    */ drum_live_cue_update,
    /* Func. Despawn   */ drum_live_cue_despawn,
    /* Func. Hit       */ drum_live_cue_hit,
    /* Func. Barely    */ drum_live_cue_barely,
    /* Func. Miss      */ drum_live_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e0c68] Cue Definition Index
const struct CueDefinition *const drum_live_cue_index[] = {
    /* 0x00 */ &drum_live_cue_00,
    /* 0x01 */ &drum_live_cue_01,
    /* 0x02 */ &drum_live_cue_02,
    /* 0x03 */ &drum_live_cue_03,
    /* 0x04 */ &drum_live_cue_04,
    /* 0x05 */ &drum_live_cue_05,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e0c84] Common Events
const EngineEvent drum_live_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) drum_live_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) drum_live_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) drum_live_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e0c94] Engine Events
const EngineEvent drum_live_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080268cc,
    /* 0x01 */ (EngineEvent) func_08026968,
    /* 0x02 */ (EngineEvent) func_08025a98,
    /* 0x03 */ (EngineEvent) func_08025ad4,
    /* 0x04 */ (EngineEvent) func_08025ae8,
    /* 0x05 */ (EngineEvent) func_08025748,
    /* 0x06 */ (EngineEvent) func_08025a2c,
    /* 0x07 */ (EngineEvent) func_08025a58,
    /* 0x08 */ (EngineEvent) func_080269e8,
    /* 0x09 */ (EngineEvent) func_08025bcc,
    /* 0x0A */ (EngineEvent) drum_live_engine_event_stub
};

// [D_089e0cc0] Drum LIVE Game Engine
const struct GameEngine D_089e0cc0 = {
    /* Size in Memory */ 0x1820,
    /* Start Engine   */ drum_live_engine_start,
    /* Update Engine  */ drum_live_engine_update,
    /* Stop Engine    */ drum_live_engine_stop,
    /* Cue Index      */ drum_live_cue_index,
    /* Common Events  */ drum_live_common_events,
    /* Engine Events  */ drum_live_engine_events,
    /* Input Event    */ drum_live_input_event
};
