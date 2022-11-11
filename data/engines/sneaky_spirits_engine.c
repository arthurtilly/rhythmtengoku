#include "engines/sneaky_spirits.h"


  /* SNEAKY SPIRITS - GAME ENGINE DATA */


extern const struct CompressedGraphics D_08bd2a00; // BG Textures
extern const struct CompressedGraphics D_08bd2b58; // BG Map
extern const struct CompressedGraphics D_08bd2cf8; // BG Map
extern const struct CompressedGraphics D_08bd245c; // OBJ Textures
extern const Palette sneaky_spirits_v0_pal[];
extern const Palette sneaky_spirits_v2_pal[];
extern const FontPalette D_089ccbd0[]; // Font Palette


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089de6e0] Buffered Textures List
const struct CompressedGraphics *const sneaky_spirits_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089de6e4] Graphics Table (Sneaky Spirits)
const struct GraphicsTable sneaky_spirits_1_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bd2a00,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bd2b58,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bd2cf8,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bd245c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ sneaky_spirits_v0_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ sneaky_spirits_v0_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbd0,
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089de744] Graphics Table (Sneaky Spirits 2)
const struct GraphicsTable sneaky_spirits_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bd2a00,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bd2b58,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bd2cf8,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bd245c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ sneaky_spirits_v2_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ sneaky_spirits_v2_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbd0,
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089de7a4] Graphics Table Index
const struct GraphicsTable *const sneaky_spirits_gfx_tables[] = {
    /* 0x00 */ sneaky_spirits_1_gfx_table,
    /* 0x01 */ sneaky_spirits_1_gfx_table,
    /* 0x02 */ sneaky_spirits_2_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089de7b0] Cue 00 (Normal)
const struct CueDefinition sneaky_spirits_cue_0 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ func_0801f7e8,
    /* Spawn Parameter */ FALSE,
    /* Func. Update    */ func_0801f7f0,
    /* Func. Despawn   */ func_0801f80c,
    /* Func. Hit       */ func_0801f8d0,
    /* Func. Barely    */ func_0801fa4c,
    /* Func. Miss      */ func_0801fb14,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de7f0] Cue 01 (More Lenient)
const struct CueDefinition sneaky_spirits_cue_1 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x07, 0x07,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ func_0801f7e8,
    /* Spawn Parameter */ FALSE,
    /* Func. Update    */ func_0801f7f0,
    /* Func. Despawn   */ func_0801f80c,
    /* Func. Hit       */ func_0801f8d0,
    /* Func. Barely    */ func_0801fa4c,
    /* Func. Miss      */ func_0801fb14,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de830] Cue 02 (Most Lenient)
const struct CueDefinition sneaky_spirits_cue_2 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x06, 0x06,
    /* Barely Window   */ -0x09, 0x09,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ func_0801f7e8,
    /* Spawn Parameter */ FALSE,
    /* Func. Update    */ func_0801f7f0,
    /* Func. Despawn   */ func_0801f80c,
    /* Func. Hit       */ func_0801f8d0,
    /* Func. Barely    */ func_0801fa4c,
    /* Func. Miss      */ func_0801fb14,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de870] Cue 03 (Tutorial - No Taunt)
const struct CueDefinition sneaky_spirits_cue_tutorial = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x00,
    /* Barely Window   */ -0x05, 0x00,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ func_0801f7e8,
    /* Spawn Parameter */ TRUE,
    /* Func. Update    */ func_0801f7f0,
    /* Func. Despawn   */ func_0801f80c,
    /* Func. Hit       */ func_0801f8d0,
    /* Func. Barely    */ func_0801fa4c,
    /* Func. Miss      */ func_0801fb14,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de8b0] Cue Definition Index
const struct CueDefinition *const sneaky_spirits_cue_index[] = {
    /* 0x00 */ &sneaky_spirits_cue_0,
    /* 0x01 */ &sneaky_spirits_cue_1,
    /* 0x02 */ &sneaky_spirits_cue_2,
    /* 0x03 */ &sneaky_spirits_cue_tutorial,
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


// [D_089de8e4] Common Events
const EngineEvent sneaky_spirits_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) func_0801fc3c,
    /* DISPLAY_TEXT   */ (EngineEvent) func_0801fc40,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089de8f0] Engine Events
const EngineEvent sneaky_spirits_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_0801ee98,
    /* 0x01 */ (EngineEvent) func_0801f5c0,
    /* 0x02 */ (EngineEvent) func_0801f5f4,
    /* 0x03 */ (EngineEvent) func_0801f638,
    /* 0x04 */ (EngineEvent) func_0801f684,
    /* 0x05 */ (EngineEvent) func_0801f71c,
    /* 0x06 */ (EngineEvent) func_0801f30c,
    /* 0x07 */ (EngineEvent) func_0801f318,
    /* 0x08 */ (EngineEvent) func_0801f76c,
    /* 0x09 */ (EngineEvent) func_0801f794,
    /* 0x0A */ (EngineEvent) func_0801f5bc
};

// [D_089de91c] Sneaky Spirits Game Engine
const struct GameEngine D_089de91c = {
    /* Size in Memory */ sizeof(struct SneakySpiritsInfo),
    /* Init. Engine   */ func_0801f3a4,
    /* Update Engine  */ func_0801f7bc,
    /* Stop Engine    */ func_0801f7cc,
    /* Cue Index      */ sneaky_spirits_cue_index,
    /* Common Events  */ sneaky_spirits_common_events,
    /* Engine Events  */ sneaky_spirits_engine_events,
    /* Input Event    */ func_0801fbb0
};
