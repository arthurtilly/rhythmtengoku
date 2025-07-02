#include "engines/drum_live.h"


  //  //  //  ANIMATION DATA  //  //  //


// [D_089e03f8] All Animations
struct Animation *drum_live_anim[][3] = {
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
struct Animation **drum_live_anim_table[] = {
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
Palette *drum_live_obj_palettes[] = {
    /* 0x00 */ drum_girls_obj_pal,
    /* 0x01 */ drum_boys_obj_pal,
    /* 0x02 */ drum_samurai_band_obj_pal
};

// [D_089e06a4] BG Palettes
Palette *drum_live_bg_palettes[] = {
    /* 0x00 */ drum_girls_bg_pal,
    /* 0x01 */ drum_boys_bg_pal,
    /* 0x02 */ drum_samurai_band_bg_pal
};

// [D_089e06b0] Bit Masks/Fields
u16 drum_live_color_masks[] = {
    /* 0x00 */ 0x0000,
    /* 0x01 */ 0x7C00,
    /* 0x02 */ 0x001F,
    /* 0x03 */ 0x7C1F,
    /* 0x04 */ 0x03E0,
    /* 0x05 */ 0x7FE0,
    /* 0x06 */ 0x03FF,
    /* 0x07 */ 0x7FFF
};

// [D_089e06c0] Flashing Light BRG Targets
u8 drum_live_brg_targets[] = {
    /* 0x00 */ (1 << 0),
    /* 0x01 */ (1 << 1),
    /* 0x02 */ (1 << 2),
    /* 0x03 */ (1 << 2) | (1 << 1)
};

// [D_089e06c4] Crowd BG Map Beat Anim (excitement <= 0)
BgMapAnim D_089e06c4[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(20)),
    BG_ANIM_WRITE_COMP(&drum_live_bg_map),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_1),
    BG_ANIM_GOTO(D_089e06c4)
};

// [D_089e06d4] Crowd BG Map Beat Anim (excitement == 1)
BgMapAnim D_089e06d4[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(5)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_2),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_1),
    BG_ANIM_WRITE_COMP(&drum_live_bg_map),
    BG_ANIM_GOTO(D_089e06c4)
};

// [D_089e06e8] Crowd BG Map Beat Anim (excitement == 2)
BgMapAnim D_089e06e8[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(5)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_3),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_2),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_1),
    BG_ANIM_WRITE_COMP(&drum_live_bg_map),
    BG_ANIM_GOTO(D_089e06c4)
};

// [D_089e0700] Crowd BG Map Beat Anim
BgMapAnim D_089e0700[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(20)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_5),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_4),
    BG_ANIM_GOTO(D_089e0700)
};

// [D_089e0710] Crowd BG Map Beat Anim (excitement == 3)
BgMapAnim D_089e0710[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(5)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_7),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_6),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_5),
    BG_ANIM_SET_DELAY(INT_TO_FIXED(40)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_4),
    BG_ANIM_GOTO(D_089e0700)
};

// [D_089e072c] Crowd BG Map Beat Anim
BgMapAnim D_089e072c[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(20)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_9),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_8),
    BG_ANIM_GOTO(D_089e072c)
};

// [D_089e073c] Crowd BG Map Beat Anim (excitement >= 4)
BgMapAnim D_089e073c[] = {
    BG_ANIM_SET_DELAY(INT_TO_FIXED(5)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_11),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_10),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_9),
    BG_ANIM_SET_DELAY(INT_TO_FIXED(40)),
    BG_ANIM_WRITE_COMP(&drum_live_crowd_bg_map_8),
    BG_ANIM_GOTO(D_089e072c)
};

// [D_089e0758] Crowd BG Map Data
BgMapAnim *drum_live_crowd_bg_maps[] = {
    /* 0x00 */ D_089e06c4,
    /* 0x01 */ D_089e06d4,
    /* 0x02 */ D_089e06e8,
    /* 0x03 */ D_089e0710,
    /* 0x04 */ D_089e073c
};


  //  //  //  DRUM KIT DATA  //  //  //


#include "drum_live_kits.inc.c"

// [D_089e0978] Drum LIVE Kits
struct DrumTechKit *drum_live_kits[] = {
    /* 0x00 */ &D_089e0854,
    /* 0x01 */ &D_089e0950
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e0980] Buffered Textures List
struct CompressedData *drum_live_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e0984] Graphics Table (Drum Girls LIVE)
struct GraphicsTable gfx_table_drum_girls_live[] = {
    /* BG Tileset */ {
        /* Src.  */ &drum_girls_live_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_girls_live_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &drum_girls_live_obj,
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
        /* Src.  */ &drum_live_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_live_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e09e4] Graphics Table (Drum Boys LIVE)
struct GraphicsTable gfx_table_drum_boys_live[] = {
    /* BG Tileset */ {
        /* Src.  */ &drum_boys_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_boys_live_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &drum_boys_live_obj,
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
        /* Src.  */ &drum_live_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_live_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0a44] Graphics Table (Drum Samurai's Band LIVE)
struct GraphicsTable gfx_table_drum_samurai_band_live[] = {
    /* BG Tileset */ {
        /* Src.  */ &drum_samurai_live_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_samurai_live_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &drum_samurai_live_obj,
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
        /* Src.  */ &drum_live_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &drum_live_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e0aa4] Graphics Table Index
struct GraphicsTable *drum_live_gfx_tables[] = {
    /* 0x00 */ gfx_table_drum_girls_live,
    /* 0x01 */ gfx_table_drum_boys_live,
    /* 0x02 */ gfx_table_drum_samurai_band_live
};

// [D_089e0ab0] ?
struct Vector2 drum_live_performer_sprite_offsets[3][3] = {
    /* DRUM_GIRLS_LIVE */ {
        /* DRUMMER   */ {   0,   0 },
        /* BASSIST   */ {   0,   0 },
        /* GUITARIST */ {   0,   0 },
    },
    /* DRUM_BOYS_LIVE */ {
        /* DRUMMER   */ {   0,   0 },
        /* BASSIST   */ {   0,   0 },
        /* GUITARIST */ {   0,   0 },
    },
    /* DRUM_SAMURAI_BAND_LIVE */ {
        /* DRUMMER   */ { -56,   8 },
        /* BASSIST   */ { 112,  -8 },
        /* GUITARIST */ {  -8, -36 },
    }
};

// [D_089e0ad4] Guitarist Animation IDs - Head
u8 drum_live_guitarist_anim_map_head[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_HEAD,
    /* 0x01 */ LIVE_ANIM_BASSIST_HEAD,
};

// [D_089e0ad6] Guitarist Animation IDs - Body
u8 drum_live_guitarist_anim_map_body[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_BODY,
    /* 0x01 */ LIVE_ANIM_BASSIST_BODY,
};

// [D_089e0ad8] Guitarist Animation IDs - Legs
u8 drum_live_guitarist_anim_map_legs[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_LEGS,
    /* 0x01 */ LIVE_ANIM_BASSIST_LEGS,
};

// [D_089e0ada] Guitarist Animation IDs - Left Arm
u8 drum_live_guitarist_anim_map_arm_l[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_ARM_L,
    /* 0x01 */ LIVE_ANIM_BASSIST_ARM_L,
};

// [D_089e0adc] Guitarist Animation IDs - Right Arm
u8 drum_live_guitarist_anim_map_arm_r[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_ARM_R,
    /* 0x01 */ LIVE_ANIM_BASSIST_ARM_R,
};

// [D_089e0ade] Guitarist Animation IDs - Crouch
u8 drum_live_guitarist_anim_map_crouch[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_CROUCH,
    /* 0x01 */ LIVE_ANIM_BASSIST_CROUCH,
};

// [D_089e0ae0] Guitarist Animation IDs - Jump & Strum
u8 drum_live_guitarist_anim_map_jump_strum[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_JUMP_STRUM,
    /* 0x01 */ LIVE_ANIM_BASSIST_JUMP_STRUM,
};

// [D_089e0ae2] Guitarist Animation IDs - Jump
u8 drum_live_guitarist_anim_map_jump[] = {
    /* 0x00 */ LIVE_ANIM_GUITARIST_JUMP,
    /* 0x01 */ LIVE_ANIM_BASSIST_JUMP
};

// [D_089e0ae4] Drum Kit ID Map
u8 drum_live_kit_map[] = {
    /* DRUM_GIRLS */ 0,
    /* DRUM_BOYS  */ 0,
    /* DRUM_BAND  */ 1
};


  //  //  //  CUE DATA  //  //  //


// [D_089e0ae8] Cue 00 (?)
struct CueDefinition drum_live_cue_00 = {
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
struct CueDefinition drum_live_cue_01 = {
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
struct CueDefinition drum_live_cue_02 = {
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
struct CueDefinition drum_live_cue_03 = {
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
struct CueDefinition drum_live_cue_04 = {
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
struct CueDefinition drum_live_cue_05 = {
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
struct CueDefinition *drum_live_cue_index[] = {
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
EngineEvent drum_live_common_events[] = {
    /* BEAT_ANIMATION */ drum_live_common_beat_animation,
    /* DISPLAY_TEXT   */ drum_live_common_display_text,
    /* INIT_TUTORIAL  */ drum_live_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e0c94] Engine Events
EngineEvent drum_live_engine_events[] = {
    /* 0x00 */ drum_live_set_guitarist_next_state,
    /* 0x01 */ drum_live_set_adjust_mode_tempo,
    /* 0x02 */ drum_live_script_clear_input_def,
    /* 0x03 */ drum_live_script_define_cool_inputs,
    /* 0x04 */ drum_live_script_define_lame_inputs,
    /* 0x05 */ drum_live_set_next_flash_type,
    /* 0x06 */ drum_live_set_next_beat_light_style,
    /* 0x07 */ drum_live_script_play_applause,
    /* 0x08 */ drum_live_set_enable_boredom,
    /* 0x09 */ drum_live_set_disable_excitement,
    /* 0x0A */ drum_live_engine_event_stub
};

// [D_089e0cc0] Drum LIVE Game Engine
struct GameEngine drum_live_engine = {
    /* Size in Memory */ sizeof(struct DrumLiveEngineData),
    /* Start Engine   */ drum_live_engine_start,
    /* Update Engine  */ drum_live_engine_update,
    /* Stop Engine    */ drum_live_engine_stop,
    /* Cue Index      */ drum_live_cue_index,
    /* Common Events  */ drum_live_common_events,
    /* Engine Events  */ drum_live_engine_events,
    /* Input Event    */ drum_live_input_event
};
