#include "engines/bon_odori.h"


  /* THE BON ODORI - GAME ENGINE DATA */


extern const struct Animation bon_odori_anim_donpan1_beat[];
extern const struct Animation D_088a7140[];
extern const struct Animation bon_odori_anim_donpan2_beat[];
extern const struct Animation D_088a7218[];
extern const struct Animation bon_odori_anim_donpan3_beat[];
extern const struct Animation D_088a7398[];
extern const struct Animation bon_odori_anim_player_beat[];
extern const struct Animation D_088a72d8[];
extern const struct Animation bon_odori_anim_donpan1_clap1[];
extern const struct Animation D_088a7198[];
extern const struct Animation bon_odori_anim_donpan2_clap1[];
extern const struct Animation D_088a7258[];
extern const struct Animation bon_odori_anim_donpan3_clap1[];
extern const struct Animation D_088a73d8[];
extern const struct Animation bon_odori_anim_player_clap1[];
extern const struct Animation D_088a7318[];
extern const struct Animation bon_odori_anim_donpan1_clap2[];
extern const struct Animation D_088a71e0[];
extern const struct Animation bon_odori_anim_donpan2_clap2[];
extern const struct Animation D_088a72a0[];
extern const struct Animation bon_odori_anim_donpan3_clap2[];
extern const struct Animation D_088a7420[];
extern const struct Animation bon_odori_anim_player_clap2[];
extern const struct Animation D_088a7360[];
extern const struct Animation bon_odori_anim_donpan1_bow[];
extern const struct Animation D_088a74e0[];
extern const struct Animation bon_odori_anim_donpan2_bow[];
extern const struct Animation D_088a7508[];
extern const struct Animation bon_odori_anim_donpan3_bow[];
extern const struct Animation D_088a7558[];
extern const struct Animation bon_odori_anim_player_bow[];
extern const struct Animation D_088a7530[];
extern const struct Animation bon_odori_anim_donpan1_glare[];
extern const struct Animation D_088a75c0[];
extern const struct Animation bon_odori_anim_donpan2_glare[];
extern const struct Animation D_088a7580[];
extern const struct Animation bon_odori_anim_donpan3_glare[];
extern const struct Animation D_088a7600[];
extern const struct Animation bon_odori_anim_donpan1_happy1[];
extern const struct Animation D_088a7678[];
extern const struct Animation bon_odori_anim_donpan2_happy1[];
extern const struct Animation D_088a76b8[];
extern const struct Animation bon_odori_anim_donpan3_happy1[];
extern const struct Animation D_088a7738[];
extern const struct Animation bon_odori_anim_player_happy1[];
extern const struct Animation D_088a76f8[];
extern const struct Animation bon_odori_anim_donpan1_happy2[];
extern const struct Animation D_088a7778[];
extern const struct Animation bon_odori_anim_donpan2_happy2[];
extern const struct Animation D_088a77b8[];
extern const struct Animation bon_odori_anim_donpan3_happy2[];
extern const struct Animation D_088a7838[];
extern const struct Animation bon_odori_anim_player_happy2[];
extern const struct Animation D_088a77f8[];
extern const struct Animation bon_odori_anim_donpan1_spin[];
extern const struct Animation D_088a7878[];
extern const struct Animation bon_odori_anim_donpan2_spin[];
extern const struct Animation D_088a78d8[];
extern const struct Animation bon_odori_anim_donpan3_spin[];
extern const struct Animation D_088a7938[];
extern const struct Animation bon_odori_anim_player_spin[];
extern const struct Animation D_088a7998[];
extern const struct Animation bon_odori_anim_yagura_beat[];
extern const struct Animation D_088a7640[];
extern const struct Animation bon_odori_anim_yagura_speak[];
extern const struct Animation D_088a7660[];
extern const struct Animation bon_odori_anim_yagura_frown[];
extern const struct Animation D_088a79f8[];

extern const struct CompressedGraphics D_08bdc118; // BG Textures (Text Window?)
extern const struct CompressedGraphics D_08bdc520; // BG Map (Text Window?)
extern const struct CompressedGraphics D_08bdc0e8; // BG Textures (The Bon Odori)
extern const struct CompressedGraphics D_08bdc4f0; // BG Map (The Bon Odori)
extern const struct CompressedGraphics D_08bdc3ac; // BG Map (The Bon Odori)
extern const struct CompressedGraphics D_08bdbca0; // OBJ Textures (The Bon Odori)
extern const struct CompressedGraphics D_08bd9f1c; // BG Textures (Bon Dance)
extern const struct CompressedGraphics D_08bda444; // BG Map (Bon Dance)
extern const struct CompressedGraphics D_08bda300; // BG Map (Bon Dance)
extern const struct CompressedGraphics D_08bd962c; // OBJ Textures (Bon Dance)

extern const Palette bon_odori_bg_pal[]; // BG Palette (The Bon Odori)
extern const Palette bon_odori_obj_pal[]; // OBJ Palette (The Bon Odori)
extern const Palette bon_dance_bg_pal[]; // BG Palette (Bon Dance)
extern const Palette bon_dance_obj_pal[]; // OBJ Palette (Bon Dance)
extern const FontPalette D_089ccbf8[]; // Tutorial Font Palette


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089deb28] All Animations
const struct Animation *const bon_odori_anim[][2] = {
    { bon_odori_anim_donpan1_beat, D_088a7140 },
    { bon_odori_anim_donpan2_beat, D_088a7218 },
    { bon_odori_anim_donpan3_beat, D_088a7398 },
    { bon_odori_anim_player_beat, D_088a72d8 },
    { bon_odori_anim_donpan1_clap1, D_088a7198 },
    { bon_odori_anim_donpan2_clap1, D_088a7258 },
    { bon_odori_anim_donpan3_clap1, D_088a73d8 },
    { bon_odori_anim_player_clap1, D_088a7318 },
    { bon_odori_anim_donpan1_clap2, D_088a71e0 },
    { bon_odori_anim_donpan2_clap2, D_088a72a0 },
    { bon_odori_anim_donpan3_clap2, D_088a7420 },
    { bon_odori_anim_player_clap2, D_088a7360 },
    { bon_odori_anim_donpan1_bow, D_088a74e0 },
    { bon_odori_anim_donpan2_bow, D_088a7508 },
    { bon_odori_anim_donpan3_bow, D_088a7558 },
    { bon_odori_anim_player_bow, D_088a7530 },
    { bon_odori_anim_donpan1_glare, D_088a75c0 },
    { bon_odori_anim_donpan2_glare, D_088a7580 },
    { bon_odori_anim_donpan3_glare, D_088a7600 },
    { bon_odori_anim_donpan1_happy1, D_088a7678 },
    { bon_odori_anim_donpan2_happy1, D_088a76b8 },
    { bon_odori_anim_donpan3_happy1, D_088a7738 },
    { bon_odori_anim_player_happy1, D_088a76f8 },
    { bon_odori_anim_donpan1_happy2, D_088a7778 },
    { bon_odori_anim_donpan2_happy2, D_088a77b8 },
    { bon_odori_anim_donpan3_happy2, D_088a7838 },
    { bon_odori_anim_player_happy2, D_088a77f8 },
    { bon_odori_anim_donpan1_spin, D_088a7878 },
    { bon_odori_anim_donpan2_spin, D_088a78d8 },
    { bon_odori_anim_donpan3_spin, D_088a7938 },
    { bon_odori_anim_player_spin, D_088a7998 },
    { bon_odori_anim_yagura_beat, D_088a7640 },
    { bon_odori_anim_yagura_speak, D_088a7660 },
    { bon_odori_anim_yagura_frown, D_088a79f8 }
};

// [D_089dec38] Animation Table
const struct Animation *const *const bon_odori_anim_table[] = {
    bon_odori_anim[0],
    bon_odori_anim[1],
    bon_odori_anim[2],
    bon_odori_anim[3],
    bon_odori_anim[4],
    bon_odori_anim[5],
    bon_odori_anim[6],
    bon_odori_anim[7],
    bon_odori_anim[8],
    bon_odori_anim[9],
    bon_odori_anim[10],
    bon_odori_anim[11],
    bon_odori_anim[12],
    bon_odori_anim[13],
    bon_odori_anim[14],
    bon_odori_anim[15],
    bon_odori_anim[16],
    bon_odori_anim[17],
    bon_odori_anim[18],
    bon_odori_anim[19],
    bon_odori_anim[20],
    bon_odori_anim[21],
    bon_odori_anim[22],
    bon_odori_anim[23],
    bon_odori_anim[24],
    bon_odori_anim[25],
    bon_odori_anim[26],
    bon_odori_anim[27],
    bon_odori_anim[28],
    bon_odori_anim[29],
    bon_odori_anim[30],
    bon_odori_anim[31],
    bon_odori_anim[32],
    bon_odori_anim[33]
};

// [D_089decc0] All Donpan Animation Indexes
const u8 bon_odori_donpan_anim_map[][4] = {
    /* Beat   */ {  0,  1,  2,  3 },
    /* Clap2  */ {  8,  9, 10, 11 },
    /* Clap1  */ {  4,  5,  6,  7 },
    /* Bow    */ { 12, 13, 14, 15 },
    /* Glare  */ { 16, 17, 18,  0 },
    /* Happy1 */ { 19, 20, 21, 22 },
    /* Happy2 */ { 23, 24, 25, 26 },
    /* Spin   */ { 27, 28, 29, 30 }
};

// [D_089dece0] Donpan Animation ID Table
const u8 *const bon_odori_donpan_anim_id_table[] = {
    /* Beat   */ bon_odori_donpan_anim_map[0],
    /* Clap2  */ bon_odori_donpan_anim_map[1],
    /* Clap1  */ bon_odori_donpan_anim_map[2],
    /* Bow    */ bon_odori_donpan_anim_map[3],
    /* Glare  */ bon_odori_donpan_anim_map[4],
    /* Happy1 */ bon_odori_donpan_anim_map[5],
    /* Happy2 */ bon_odori_donpan_anim_map[6],
    /* Spin   */ bon_odori_donpan_anim_map[7],
};

// [D_089ded00] Donpan Animation Durations (delay before any Beat Animation can play)
const u16 bon_odori_anim_durations[] = {
    /* Beat   */ 0x00,
    /* Clap2  */ 0x2C,
    /* Clap1  */ 0x14,
    /* Bow    */ 0x2C,
    /* Glare  */ 0x00,
    /* Happy1 */ 0x00,
    /* Happy2 */ 0x00,
    /* Spin   */ 0x0C
};

// [D_089ded10] Buffered Textures List
const struct CompressedGraphics *const bon_odori_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ded14] Bon Odori Font Palettes
const FontPalette bon_odori_font_pal[] = {
    /* LYRICS PALETTE */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0xC00000),
        /* 02 */ TO_RGB555(0xE00000),
        /* 03 */ TO_RGB555(0xF80000)
    },
    /* DONDON PALETTE */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x00C000),
        /* 02 */ TO_RGB555(0x00E000),
        /* 03 */ TO_RGB555(0x00F800)
    },
    /* PANPAN PALETTE */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0xC0C000),
        /* 02 */ TO_RGB555(0xE0E000),
        /* 03 */ TO_RGB555(0xF8F800)
    }
};

// [D_089ded2c] Bon Odori Font Palettes (Highlighted)
const FontPalette bon_odori_font_pal_highlight[] = {
    /* LYRICS PALETTE */ {
        /* 00 */ TO_RGB555(0x0000C0),
        /* 01 */ TO_RGB555(0xC000F8),
        /* 02 */ TO_RGB555(0xE000F8),
        /* 03 */ TO_RGB555(0xF800F8)
    },
    /* DONDON PALETTE */ {
        /* 00 */ TO_RGB555(0x0000C0),
        /* 01 */ TO_RGB555(0x00C0F8),
        /* 02 */ TO_RGB555(0x00E0F8),
        /* 03 */ TO_RGB555(0x00F8F8)
    },
    /* PANPAN PALETTE */ {
        /* 00 */ TO_RGB555(0x0000C0),
        /* 01 */ TO_RGB555(0xC0C0F8),
        /* 02 */ TO_RGB555(0xE0E0F8),
        /* 03 */ TO_RGB555(0xF8F8F8)
    }
};

// [D_089ded44] Graphics Table (Bon Odori)
const struct GraphicsTable bon_odori_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bdc118,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bdc520,
        /* Dest. */ BG_TILESET_BASE(0xC000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08bdc0e8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bdc4f0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bdc3ac,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bdbca0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bon_odori_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal[0],
        /* Dest. */ OBJ_PALETTE_BUFFER(7.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(8.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal[2],
        /* Dest. */ OBJ_PALETTE_BUFFER(9.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal_highlight[0],
        /* Dest. */ OBJ_PALETTE_BUFFER(10.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal_highlight[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(11.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal_highlight[2],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbf8,
        /* Dest. */ OBJ_PALETTE_BUFFER(13.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089dee04] Graphics Table (Bon Dance)
const struct GraphicsTable bon_dance_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bdc118,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bdc520,
        /* Dest. */ BG_TILESET_BASE(0xC000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08bd9f1c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bda444,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bda300,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bd962c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bon_dance_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_dance_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal[0],
        /* Dest. */ OBJ_PALETTE_BUFFER(7.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(8.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal[2],
        /* Dest. */ OBJ_PALETTE_BUFFER(9.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal_highlight[0],
        /* Dest. */ OBJ_PALETTE_BUFFER(10.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal_highlight[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(11.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_font_pal_highlight[2],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbf8,
        /* Dest. */ OBJ_PALETTE_BUFFER(13.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089deec4] Graphics Table Index
const struct GraphicsTable *const bon_odori_gfx_tables[] = {
    /* 0x00 */ bon_odori_gfx_table,
    /* 0x01 */ bon_dance_gfx_table
};

// [D_089deecc] BG Palettes
const u16 *const bon_odori_bg_palettes[] = {
    /* 0x00 */ bon_odori_bg_pal[0],
    /* 0x01 */ bon_dance_bg_pal[0]
};

// [D_089deed4] OBJ Palettes
const u16 *const bon_odori_obj_palettes[] = {
    /* 0x00 */ bon_odori_obj_pal[0],
    /* 0x01 */ bon_dance_obj_pal[0]
};

// [D_089deedc] Text Horizontal Positions
const u16 bon_odori_text_x_offsets[] = {
    /* UPPER  */ SCREEN_CENTER_X,
    /* MIDDLE */ SCREEN_CENTER_X - 104,
    /* LOWER  */ SCREEN_CENTER_X + 104
};


  //  //  //  CUE DATA  //  //  //


// [D_089deee4] Cue 00 (Clap Forwards)
const struct CueDefinition bon_odori_cue_clap_front = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct BonOdoriCue),
    /* Func. Spawn     */ func_08020f98,
    /* Spawn Parameter */ DONPAN_ANIM_CLAP_FRONT,
    /* Func. Update    */ func_08020fb0,
    /* Func. Despawn   */ func_08020fcc,
    /* Func. Hit       */ func_08020fd0,
    /* Func. Barely    */ func_08020fe8,
    /* Func. Miss      */ func_0802100c,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089def24] Cue 01 (Clap to the Side)
const struct CueDefinition bon_odori_cue_clap_side = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct BonOdoriCue),
    /* Func. Spawn     */ func_08020f98,
    /* Spawn Parameter */ DONPAN_ANIM_CLAP_SIDE,
    /* Func. Update    */ func_08020fb0,
    /* Func. Despawn   */ func_08020fcc,
    /* Func. Hit       */ func_08020fd0,
    /* Func. Barely    */ func_08020fe8,
    /* Func. Miss      */ func_0802100c,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089def64] Cue Definition Index
const struct CueDefinition *const bon_odori_cue_index[] = {
    /* 0x00 */ &bon_odori_cue_clap_front,
    /* 0x01 */ &bon_odori_cue_clap_side,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ NULL,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089def98] Common Events
const EngineEvent bon_odori_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) func_08021084,
    /* DISPLAY_TEXT   */ (EngineEvent) func_08021188,
    /* INIT_TUTORIAL  */ (EngineEvent) func_0802118c,
    END_OF_COMMON_EVENT_LIST
};

// [D_089defa8] Engine Events
const EngineEvent bon_odori_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08020be4,
    /* 0x01 */ (EngineEvent) func_08020bf4,
    /* 0x02 */ (EngineEvent) func_08020c0c,
    /* 0x03 */ (EngineEvent) func_08020c24,
    /* 0x04 */ (EngineEvent) func_08020c3c,
    /* 0x05 */ (EngineEvent) func_08020c8c,
    /* 0x06 */ (EngineEvent) func_08020d20,
    /* 0x07 */ (EngineEvent) func_08020da0,
    /* 0x08 */ (EngineEvent) func_08020e1c,
    /* 0x09 */ (EngineEvent) func_08020e50,
    /* 0x0A */ (EngineEvent) func_08020e90,
    /* 0x0B */ (EngineEvent) func_080207d0,
    /* 0x0C */ (EngineEvent) func_080207ec,
    /* 0x0D */ (EngineEvent) func_080207f8,
    /* 0x0E */ (EngineEvent) func_0802080c,
    /* 0x0F */ (EngineEvent) func_08020ed4,
    /* 0x10 */ (EngineEvent) func_08020ee8,
    /* 0x11 */ (EngineEvent) func_08020a48
};

// [D_089deff0] Bon Odori Game Engine
const struct GameEngine D_089deff0 = {
    /* Size in Memory */ sizeof(struct BonOdoriInfo),
    /* Init. Engine   */ func_080208ec,
    /* Update Engine  */ func_08020f48,
    /* Stop Engine    */ func_08020f8c,
    /* Cue Index      */ bon_odori_cue_index,
    /* Common Events  */ bon_odori_common_events,
    /* Engine Events  */ bon_odori_engine_events,
    /* Input Event    */ func_08021034
};
