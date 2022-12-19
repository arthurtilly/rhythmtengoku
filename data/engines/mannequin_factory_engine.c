#include "engines/mannequin_factory.h"


  /* MANNEQUIN FACTORY - GAME ENGINE DATA */


extern const struct Animation mannequin_factory_anim27[];
extern const struct Animation mannequin_factory_anim26[];
extern const struct Animation mannequin_factory_anim28[];
extern const struct CompressedGraphics D_08c34478;
extern const struct CompressedGraphics D_08c35f18;
extern const struct CompressedGraphics D_08c360b0;
extern const struct CompressedGraphics D_08c35c9c;
extern const Palette mannequin_factory_pal[];
extern const struct SequenceData s_SD7_seqData;
extern const struct SequenceData s_f_conveyer_hit_seqData;
extern const struct SequenceData s_tom_M_seqData;
extern const struct SequenceData s_tom_L_seqData;


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089df384] ?
const struct Animation *const D_089df384[] = {
    /* 0x00 */ mannequin_factory_anim27,
    /* 0x01 */ mannequin_factory_anim26,
    /* 0x02 */ mannequin_factory_anim28,
    /* 0x03 */ NULL,
    /* 0x04 */ mannequin_factory_anim27,
    /* 0x05 */ mannequin_factory_anim26,
    /* 0x06 */ mannequin_factory_anim28,
    /* 0x07 */ NULL
};

// [D_089df3a4] ?
const u16 D_089df3a4[] = {
    A_BUTTON,
    B_BUTTON,
    DPAD_RIGHT,
    DPAD_LEFT
};

// [D_089df3ac] Buffered Textures List
const struct CompressedGraphics *const D_089df3ac[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089df3b0] Graphics Table
const struct GraphicsTable D_089df3b0[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c34478,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c35f18,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c360b0,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c35c9c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ mannequin_factory_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ mannequin_factory_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  CUE DATA  //  //  //


// [D_089df404] ?
const struct SequenceData *const D_089df404[] = {
    /* 0x00 */ &s_SD7_seqData,
    /* 0x01 */ &s_f_conveyer_hit_seqData,
    /* 0x02 */ &s_tom_M_seqData,
    /* 0x03 */ &s_tom_L_seqData
};

// [D_089df414] Cue 00
const struct CueDefinition D_089df414 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ func_08023404,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ func_08023418,
    /* Func. Despawn   */ func_08023434,
    /* Func. Hit       */ func_08023438,
    /* Func. Barely    */ func_080234f4,
    /* Func. Miss      */ func_08023500,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df454] Cue 01
const struct CueDefinition D_089df454 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ func_08023404,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ func_08023418,
    /* Func. Despawn   */ func_08023434,
    /* Func. Hit       */ func_08023438,
    /* Func. Barely    */ func_080234f4,
    /* Func. Miss      */ func_08023500,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df494] Cue 02
const struct CueDefinition D_089df494 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ func_08023404,
    /* Spawn Parameter */ 2,
    /* Func. Update    */ func_08023418,
    /* Func. Despawn   */ func_08023434,
    /* Func. Hit       */ func_08023438,
    /* Func. Barely    */ func_080234f4,
    /* Func. Miss      */ func_08023500,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df4d4] Cue 03
const struct CueDefinition D_089df4d4 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_LEFT),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ func_08023404,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ func_08023418,
    /* Func. Despawn   */ func_08023434,
    /* Func. Hit       */ func_08023438,
    /* Func. Barely    */ func_080234f4,
    /* Func. Miss      */ func_08023500,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df514] Cue 04
const struct CueDefinition D_089df514 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_LEFT),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x01,
    /* Barely Window   */ -0x05, 0x01,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ func_08023404,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ func_08023418,
    /* Func. Despawn   */ func_08023434,
    /* Func. Hit       */ func_08023438,
    /* Func. Barely    */ func_080234f4,
    /* Func. Miss      */ func_08023500,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df554] Cue 05
const struct CueDefinition D_089df554 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ 0,
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ 0x00, 0x00,
    /* Barely Window   */ 0x00, 0x00,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ func_08023404,
    /* Spawn Parameter */ 5,
    /* Func. Update    */ func_08023418,
    /* Func. Despawn   */ func_08023434,
    /* Func. Hit       */ func_08023438,
    /* Func. Barely    */ func_080234f4,
    /* Func. Miss      */ func_08023500,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df594] Cue Definition Index
const struct CueDefinition *const D_089df594[] = {
    /* 0x00 */ &D_089df414,
    /* 0x01 */ &D_089df454,
    /* 0x02 */ &D_089df494,
    /* 0x03 */ &D_089df4d4,
    /* 0x04 */ &D_089df514,
    /* 0x05 */ &D_089df554,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089df5c8] Common Events
const EngineEvent D_089df5c8[] = {
    /* 0x00 */ (EngineEvent) func_08023574,
    /* 0x01 */ (EngineEvent) func_08023578,
    /* 0x02 */ (EngineEvent) func_0802357c,
    END_OF_COMMON_EVENT_LIST
};

// [D_089df5d8] Engine Events
const EngineEvent D_089df5d8[] = {
    /* 0x00 */ (EngineEvent) func_080226d4,
    /* 0x01 */ (EngineEvent) func_080229bc,
    /* 0x02 */ (EngineEvent) func_08022f00,
    /* 0x03 */ (EngineEvent) func_08022f1c,
    /* 0x04 */ (EngineEvent) func_08023150,
    /* 0x05 */ (EngineEvent) func_08023164,
    /* 0x06 */ (EngineEvent) func_08022ba0,
    /* 0x07 */ (EngineEvent) func_08022efc
};

// [D_089df5f8] Mannequin Factory Game Engine
const struct GameEngine D_089df5f8 = {
    /* Size in Memory */ 0x434,
    /* Init. Engine   */ func_08022e58,
    /* Update Engine  */ func_0802303c,
    /* Stop Engine    */ func_08023400,
    /* Cue Index      */ D_089df594,
    /* Common Events  */ D_089df5c8,
    /* Engine Events  */ D_089df5d8,
    /* Input Event    */ func_08023530
};
